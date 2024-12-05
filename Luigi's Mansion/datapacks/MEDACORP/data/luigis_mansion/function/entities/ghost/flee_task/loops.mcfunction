execute facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s[scores={FleeTime=1}] ~ ~ ~ ~-180 50
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_task/wall
execute if predicate luigis_mansion:50_50 run tag @s[scores={FleeTime=11}] add turn_right
teleport @s[scores={FleeTime=11},tag=!turn_right] ~ ~ ~ ~-30 ~
teleport @s[scores={FleeTime=11},tag=turn_right] ~ ~ ~ ~30 ~
tag @s[scores={FleeTime=11}] remove turn_right
execute at @s run teleport @s[scores={FleeTime=2..11}] ~ ~ ~ ~ ~-10
execute at @s unless score #mirrored Selected matches 1 run teleport @s[scores={FleeTime=6..15}] ~ ~ ~ ~-10 ~
execute at @s if score #mirrored Selected matches 1 run teleport @s[scores={FleeTime=6..15}] ~ ~ ~ ~10 ~
execute at @s run teleport @s[scores={FleeTime=12..21}] ~ ~ ~ ~ ~10
execute at @s unless score #mirrored Selected matches 1 unless entity @s[scores={FleeTime=6..15}] run teleport @s[scores={FleeTime=2..}] ~ ~ ~ ~10 ~
execute at @s if score #mirrored Selected matches 1 unless entity @s[scores={FleeTime=6..15}] run teleport @s[scores={FleeTime=2..}] ~ ~ ~ ~-10 ~
scoreboard players set @s[scores={FleeTime=21..}] FleeTime 1

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ ~ run function luigis_mansion:entities/ghost/flee_task/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_ground_bound