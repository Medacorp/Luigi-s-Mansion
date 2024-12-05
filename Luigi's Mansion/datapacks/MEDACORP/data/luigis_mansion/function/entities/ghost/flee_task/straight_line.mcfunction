execute facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~-180 0

execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_ground_bound