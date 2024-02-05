execute if score #temp Time matches ..-1 run teleport @s ^ ^-0.1 ^
execute if score #temp Time matches ..-1 run scoreboard players add #temp Time 1
execute if score #temp Time matches 1.. run teleport @s ^ ^0.1 ^
execute if score #temp Time matches 1.. run scoreboard players remove #temp Time 1
execute unless score #temp Time matches 0 at @s run function luigis_mansion:old_entities/ghost_heart/move_step
