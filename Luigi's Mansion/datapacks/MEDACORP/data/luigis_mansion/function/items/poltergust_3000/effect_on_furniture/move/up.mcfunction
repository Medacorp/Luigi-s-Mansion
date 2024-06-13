execute if score #temp PositionY matches 1.. run teleport @s ^ ^0.1 ^
execute if score #temp PositionY matches 1.. run scoreboard players remove #temp PositionY 1
execute if score #temp PositionY matches ..-1 run teleport @s ^ ^-0.1 ^
execute if score #temp PositionY matches ..-1 run scoreboard players add #temp PositionY 1
execute unless score #temp PositionY matches 0 positioned as @s run function luigis_mansion:entities/poltergust_3000/effect_on_furniture/move/up