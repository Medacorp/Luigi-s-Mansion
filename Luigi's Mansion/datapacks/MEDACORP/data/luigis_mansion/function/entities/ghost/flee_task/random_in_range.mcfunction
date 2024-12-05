execute if entity @e[tag=vacuuming_me,distance=..2.99,limit=1] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~-180 0
execute unless entity @e[tag=vacuuming_me,distance=..2.99,limit=1] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~ 0
tag @s[scores={FleeTime=..2}] remove turn_right
execute if predicate luigis_mansion:50_50 run tag @s[scores={FleeTime=..2}] add turn_right
execute at @s run teleport @s[tag=!turn_right] ~ ~ ~ ~-3 ~
execute at @s run teleport @s[tag=turn_right] ~ ~ ~ ~3 ~
scoreboard players set @s[scores={FleeTime=4..}] FleeTime 1
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_task/wall
execute at @s[tag=out_of_range,tag=!was_out_of_range] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s remove was_out_of_range
tag @s[tag=out_of_range] add was_out_of_range
tag @s remove out_of_range

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_in_range
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_in_range_ground_bound