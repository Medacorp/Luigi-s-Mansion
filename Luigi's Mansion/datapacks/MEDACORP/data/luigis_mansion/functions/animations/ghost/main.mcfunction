execute store success score #temp Time run data modify entity @s ArmorItems[3].tag.luigis_mansion.animation set from storage luigis_mansion:data ghost.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/ghost/reset_pose
scoreboard players reset #temp Time
execute if entity @s[tag=!invisible] if data storage luigis_mansion:data ghost{tags:["invisible"]} unless data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
execute if entity @s[tag=!invisible] if data storage luigis_mansion:data ghost{tags:["invisible"]} if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible
execute if entity @s[tag=invisible] unless data storage luigis_mansion:data ghost{tags:["invisible"]} run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.visible
tag @s remove invisible
execute if data storage luigis_mansion:data ghost{tags:["invisible"]} run tag @s add invisible
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
$function $(namespace):animations/$(id)/call_part_function

execute store result score #temp Time run data get storage luigis_mansion:data ghost.initial_animation_progress
execute unless data storage luigis_mansion:data ghost{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/ghost/main
scoreboard players reset #temp Time
tag @s add found_owner