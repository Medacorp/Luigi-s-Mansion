execute facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~-180 0
tag @s[scores={FleeTime=..2}] remove turn_right
execute if predicate luigis_mansion:ghost/random_flee_right_chance run tag @s[scores={FleeTime=..2}] add turn_right
execute at @s run teleport @s[tag=!turn_right] ~ ~ ~ ~-3 ~
execute at @s run teleport @s[tag=turn_right] ~ ~ ~ ~3 ~
scoreboard players set @s[scores={FleeTime=4..}] FleeTime 1
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_task/wall

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_ground_bound