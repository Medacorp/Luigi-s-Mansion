execute store result score @s Room run data get storage luigis_mansion:data passive.room
execute if data storage luigis_mansion:data passive.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data passive.mirror.x
execute if data storage luigis_mansion:data passive.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data passive.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data passive.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute if data storage luigis_mansion:data passive{tags:["flipped_gravity"]} run tag @s add flipped_gravity
execute store success score #temp Time run data modify entity @s data.animation set from storage luigis_mansion:data passive.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/passive/reset_pose
scoreboard players reset #temp Time
teleport @s ~ ~ ~ ~ ~
$function $(namespace):animations/$(id)/call_part_function
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped
tag @s[tag=flipped_gravity] remove flipped_gravity

execute unless score @s AnimationOldRotationX = @s AnimationRotationX run function luigis_mansion:animations/generic/sync
execute unless score @s AnimationOldRotationY = @s AnimationRotationY run function luigis_mansion:animations/generic/sync
execute unless score @s AnimationOldRotationZ = @s AnimationRotationZ run function luigis_mansion:animations/generic/sync

execute store result score #temp Time run data get storage luigis_mansion:data passive.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/passive/main with storage luigis_mansion:data macro.passive
scoreboard players reset #temp Time
tag @s add found_owner