execute if score #temp Time matches 1.. run teleport @s ^0.1 ^ ^
execute if score #temp Time matches 1.. run scoreboard players remove #temp Time 1
execute if score #temp Time matches ..-1 run teleport @s ^-0.1 ^ ^
execute if score #temp Time matches ..-1 run scoreboard players add #temp Time 1
execute unless score #temp Time matches 0 positioned as @s run function luigis_mansion:old_entities/furniture/spawn/move/left