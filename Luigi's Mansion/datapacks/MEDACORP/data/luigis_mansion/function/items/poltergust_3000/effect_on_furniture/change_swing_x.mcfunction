execute unless score @s FurnitureXOrigin = @s FurnitureXTarget run scoreboard players set @s FurnitureXProgress 0
scoreboard players set @s[scores={FurnitureXProgress=168}] FurnitureXProgress 0
scoreboard players operation @s FurnitureXOrigin = #temp Time
scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget