execute store result score @s Room run data get storage luigis_mansion:data ghost.room
execute if data storage luigis_mansion:data ghost.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data ghost.mirror.x
execute if data storage luigis_mansion:data ghost.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data ghost.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data ghost.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute store success score #temp Time run data modify entity @s data.animation set from storage luigis_mansion:data ghost.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/ghost/reset_pose
scoreboard players reset #temp Time
execute if entity @s[tag=visible] unless data storage luigis_mansion:data ghost{tags:["visible"]} if data entity @s equipment.head.components."minecraft:custom_model_data".flags[0] run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 1b
execute if entity @s[tag=!visible] if data storage luigis_mansion:data ghost{tags:["visible"]} if data entity @s equipment.head.components."minecraft:custom_model_data".flags[0] run data modify entity @s equipment.head.components."minecraft:custom_model_data".flags[0] set value 0b
tag @s remove no_reflection
tag @s remove visible
tag @s remove flipped_gravity
execute if data storage luigis_mansion:data ghost{tags:["hidden"]} run tag @s add no_reflection
execute if data storage luigis_mansion:data ghost{tags:["visible"]} run tag @s add visible
execute if data storage luigis_mansion:data ghost{tags:["flipped_gravity"]} run tag @s add flipped_gravity
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
$function $(namespace):animations/$(id)/call_part_function

execute store result score #temp Time run data get storage luigis_mansion:data ghost.initial_animation_progress
execute unless data storage luigis_mansion:data ghost{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/ghost/main with storage luigis_mansion:data macro.ghost
scoreboard players reset #temp Time
tag @s add found_owner