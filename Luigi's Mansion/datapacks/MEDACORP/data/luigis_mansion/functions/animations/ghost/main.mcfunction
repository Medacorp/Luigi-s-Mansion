execute store success score #temp Time run data modify entity @s ArmorItems[3].tag.luigis_mansion.animation set from storage luigis_mansion:data ghost.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/ghost/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
teleport @s ~ ~ ~ ~ ~
$function luigis_mansion:animations/$(ghost)/call_part_function
tag @s add found_owner