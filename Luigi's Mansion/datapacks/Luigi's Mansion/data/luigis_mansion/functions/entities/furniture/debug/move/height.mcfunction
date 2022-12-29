execute if score #temp2 FurnitureSizeU matches 1.. run teleport @s ~ ~0.1 ~
execute if score #temp2 FurnitureSizeU matches 1.. run scoreboard players remove #temp2 FurnitureSizeU 1
execute if score #temp2 FurnitureSizeU matches ..-1 run teleport @s ~ ~-0.1 ~
execute if score #temp2 FurnitureSizeU matches ..-1 run scoreboard players add #temp2 FurnitureSizeU 1
execute unless score #temp2 FurnitureSizeU matches 0 positioned as @s run function luigis_mansion:entities/furniture/debug/move/height