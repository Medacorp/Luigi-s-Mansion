execute if entity @e[tag=vacuuming_me,distance=..3.99,limit=1] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~-180 0
execute unless entity @e[tag=vacuuming_me,distance=..3.99,limit=1] facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~ 0
tag @s[scores={FleeTime=..2}] remove turn_right
execute if predicate luigis_mansion:ghost/random_flee_right_chance run tag @s[scores={FleeTime=..2}] add turn_right
execute at @s run teleport @s[tag=!turn_right] ~ ~ ~ ~-3 ~
execute at @s run teleport @s[tag=turn_right] ~ ~ ~ ~3 ~
scoreboard players set @s[scores={FleeTime=4..}] FleeTime 1
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_task/wall
tag @s[scores={FleeTime=2}] remove was_out_of_range
tag @s[tag=out_of_range] add was_out_of_range
execute at @s[tag=was_out_of_range] run scoreboard players operation #temp MoveFlee *= #-1 Constants
tag @s remove out_of_range

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_in_range
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_in_range_ground_bound
execute if score #temp MoveFlee matches ..-1 facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_pulled