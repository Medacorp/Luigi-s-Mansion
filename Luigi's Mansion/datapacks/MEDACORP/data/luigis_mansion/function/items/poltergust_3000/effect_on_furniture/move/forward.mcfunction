execute if score #temp PositionZ matches 1.. run teleport @s ^ ^ ^0.1
execute if score #temp PositionZ matches 1.. run scoreboard players remove #temp PositionZ 1
execute if score #temp PositionZ matches ..-1 run teleport @s ^ ^ ^-0.1
execute if score #temp PositionZ matches ..-1 run scoreboard players add #temp PositionZ 1
execute unless score #temp PositionZ matches 0 positioned as @s run function luigis_mansion:entities/poltergust_3000/effect_on_furniture/move/forward