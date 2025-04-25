teleport @s ^ ^ ^0.1
scoreboard players add #temp MoveFlee 1
execute if score #temp MoveFlee matches ..-1 positioned as @s unless entity @e[tag=vacuuming_me,distance=..4,limit=1] run function luigis_mansion:entities/ghost/flee_task/move_pulled