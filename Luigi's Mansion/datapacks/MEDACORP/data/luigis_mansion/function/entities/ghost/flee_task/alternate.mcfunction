execute facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~-180 0
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_task/wall
execute if predicate luigis_mansion:50_50 run tag @s[scores={FleeTime=11}] add turn_right
teleport @s[scores={FleeTime=11},tag=!turn_right] ~ ~ ~ ~-30 ~
teleport @s[scores={FleeTime=11},tag=turn_right] ~ ~ ~ ~30 ~
tag @s[scores={FleeTime=11}] remove turn_right
teleport @s[scores={FleeTime=21..}] ~ ~ ~ ~-180 ~
scoreboard players set @s[scores={FleeTime=21..}] FleeTime 1

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_ground_bound