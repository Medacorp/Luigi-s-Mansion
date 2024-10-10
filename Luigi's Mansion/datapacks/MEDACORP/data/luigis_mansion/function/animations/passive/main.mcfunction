execute store result score @s Room run data get storage luigis_mansion:data passive.room
execute if data storage luigis_mansion:data passive.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data passive.mirror.x
execute if data storage luigis_mansion:data passive.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data passive.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data passive.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute unless data entity @s ArmorItems[3].count run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}
execute store success score #temp Time run data modify entity @s ArmorItems[3].components."minecraft:custom_data".animation set from storage luigis_mansion:data passive.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/passive/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
$function $(namespace):animations/$(id)/call_part_function

execute store result score #temp Time run data get storage luigis_mansion:data passive.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/passive/main with storage luigis_mansion:data macro.passive
scoreboard players reset #temp Time
tag @s add found_owner