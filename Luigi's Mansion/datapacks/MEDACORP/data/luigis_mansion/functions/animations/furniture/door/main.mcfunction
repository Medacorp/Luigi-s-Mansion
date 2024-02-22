execute store success score #temp Time run data modify entity @s ArmorItems[3].tag.luigis_mansion.animation set from storage luigis_mansion:data passive.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/furniture/door/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} run tag @s add forced_animation
execute if data storage luigis_mansion:data passive{initial_animation_progress:0} run tag @s remove forced_animation

data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.normal
execute if data storage luigis_mansion:data passive{tags:["blockade"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.blockade
execute if data storage luigis_mansion:data passive{tags:["area_blockade"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.area_blockade
execute if data storage luigis_mansion:data passive{tags:["barricade"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.barricade
execute if data storage luigis_mansion:data passive{tags:["burning"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.burning

execute if entity @s[tag=right] run function luigis_mansion:animations/furniture/door/right with storage luigis_mansion:data passive.animation
execute if entity @s[tag=left] run function luigis_mansion:animations/furniture/door/left with storage luigis_mansion:data passive.animation

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.0001f,0.0f]
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default

#sync up animation for forced opening
execute store result score #temp Time run data get storage luigis_mansion:data passive.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/furniture/door/main
scoreboard players reset #temp Time
tag @s add found_owner