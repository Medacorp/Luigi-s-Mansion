scoreboard players add @s FurnitureVacuum 1
scoreboard players set @s[scores={FurnitureVacuum=10..}] FurnitureVacuum -10
scoreboard players operation #temp FurnitureVacuum = @s FurnitureVacuum
execute if score #temp FurnitureVacuum matches ..-1 run scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
execute store result storage luigis_mansion:data transformation[9] float -0.075 run scoreboard players operation #temp FurnitureVacuum *= #2 Constants