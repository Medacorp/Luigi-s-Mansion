scoreboard players operation #temp TotalDamage = @s TotalDamage
scoreboard players operation #temp LastTotalDamage = @s LastTotalDamage
scoreboard players operation #temp2 LastTotalDamage = #temp LastTotalDamage
scoreboard players operation #temp2 LastTotalDamage %= #2 Constants

execute unless score #temp LastTotalDamage = #temp TotalDamage run function luigis_mansion:entities/luigi/damage/drop_item/drop/loop

scoreboard players reset #temp TotalDamage
scoreboard players reset #temp LastTotalDamage
scoreboard players reset #temp2 LastTotalDamage