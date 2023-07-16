execute unless score @s FurnitureZOrigin = @s FurnitureZTarget run scoreboard players set @s FurnitureZProgress 0
scoreboard players set @s[scores={FurnitureZProgress=168}] FurnitureZProgress 0
scoreboard players operation @s FurnitureZOrigin = #temp Time
scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget