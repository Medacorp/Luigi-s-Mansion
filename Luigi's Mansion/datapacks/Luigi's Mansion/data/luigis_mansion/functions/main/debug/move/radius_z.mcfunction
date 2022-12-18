execute if score #temp2 FurnitureSizeF matches 1.. run teleport @s ~ ~ ~0.1
execute if score #temp2 FurnitureSizeF matches 1.. run scoreboard players remove #temp2 FurnitureSizeF 1
execute if score #temp2 FurnitureSizeF matches ..-1 run teleport @s ~ ~ ~-0.1
execute if score #temp2 FurnitureSizeF matches ..-1 run scoreboard players add #temp2 FurnitureSizeF 1
execute unless score #temp2 FurnitureSizeF matches 0 positioned as @s run function luigis_mansion:main/debug/move/radius_z