execute store result score @s Room run data get storage luigis_mansion:data passive.room
execute if data storage luigis_mansion:data passive.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data passive.mirror.x
execute if data storage luigis_mansion:data passive.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data passive.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data passive.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute store success score #temp Time run data modify entity @s data.animation set from storage luigis_mansion:data passive.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/furniture/door/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
execute unless data storage luigis_mansion:data passive{tags:["forced_animation"]} run tag @s remove forced_animation
execute if data storage luigis_mansion:data passive{tags:["forced_animation"]} run tag @s add forced_animation

data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "normal"
execute if data storage luigis_mansion:data passive{tags:["blockade"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "blockade"
execute if data storage luigis_mansion:data passive{tags:["area_blockade"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "blockade_area"
execute if data storage luigis_mansion:data passive{tags:["barricaded"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "barricaded"
execute if data storage luigis_mansion:data passive{tags:["barricaded_double"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "barricaded_double"
execute if data storage luigis_mansion:data passive{tags:["burning"]} run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "burning"

execute if entity @s[tag=right] run function luigis_mansion:animations/furniture/door/right with storage luigis_mansion:data passive.animation
execute if entity @s[tag=left] run function luigis_mansion:animations/furniture/door/left with storage luigis_mansion:data passive.animation

execute store result score #temp Time run data get storage luigis_mansion:data passive.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/furniture/door/main
scoreboard players reset #temp Time
tag @s add found_owner