execute store result score @s Room run data get storage luigis_mansion:data passive.room
execute store success score #temp Time run data modify entity @s ArmorItems[3].tag.luigis_mansion.animation set from storage luigis_mansion:data passive.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/passive/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
$function $(namespace):animations/$(id)/call_part_function

execute store result score #temp Time run data get storage luigis_mansion:data passive.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/passive/main with storage luigis_mansion:data macro.passive
scoreboard players reset #temp Time
tag @s add found_owner