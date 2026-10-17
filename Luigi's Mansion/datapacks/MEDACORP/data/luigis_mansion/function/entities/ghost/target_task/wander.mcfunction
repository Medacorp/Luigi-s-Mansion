scoreboard players add @s TargetTime 1
tag @s remove reached_target
execute at @s[scores={TargetTime=1}] run function luigis_mansion:entities/ghost/target_task/initial_wander_direction
scoreboard players set @s[scores={TargetTime=11..}] TargetTime 1
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute at @s if block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute if score #temp Move matches -1 run scoreboard players set @s TargetTime 10
execute at @s[scores={TargetTime=10}] run function luigis_mansion:entities/ghost/target_task/get_new_wander_direction