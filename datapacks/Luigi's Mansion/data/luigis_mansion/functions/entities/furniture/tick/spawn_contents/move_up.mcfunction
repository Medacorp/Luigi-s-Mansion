execute if score #temp2 Time matches 1.. run teleport @s ^ ^0.1 ^
execute if score #temp2 Time matches 1.. run scoreboard players remove #temp2 Time 1
execute if score #temp2 Time matches ..-1 run teleport @s ^ ^-0.1 ^
execute if score #temp2 Time matches ..-1 run scoreboard players add #temp2 Time 1
execute unless score #temp2 Time matches 0 positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_up