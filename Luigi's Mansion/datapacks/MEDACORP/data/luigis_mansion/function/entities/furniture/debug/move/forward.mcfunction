execute if score #temp2 FurnitureSizeForward matches 1.. run teleport @s ^ ^ ^0.1
execute if score #temp2 FurnitureSizeForward matches 1.. run scoreboard players remove #temp2 FurnitureSizeForward 1
execute if score #temp2 FurnitureSizeForward matches ..-1 run teleport @s ^ ^ ^-0.1
execute if score #temp2 FurnitureSizeForward matches ..-1 run scoreboard players add #temp2 FurnitureSizeForward 1
execute unless score #temp2 FurnitureSizeForward matches 0 positioned as @s run function luigis_mansion:entities/furniture/debug/move/forward