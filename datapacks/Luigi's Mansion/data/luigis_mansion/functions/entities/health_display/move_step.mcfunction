execute if score #temp Time matches ..-1 run teleport @s ^ ^-0.1 ^
execute if score #temp Time matches ..-1 run scoreboard players add #temp Time 1
execute if score #temp Time matches 1.. run teleport @s ^ ^0.1 ^
execute if score #temp Time matches 1.. run scoreboard players remove #temp Time 1
execute unless score #temp Time matches 0 run function luigis_mansion:entities/health_display/move_step