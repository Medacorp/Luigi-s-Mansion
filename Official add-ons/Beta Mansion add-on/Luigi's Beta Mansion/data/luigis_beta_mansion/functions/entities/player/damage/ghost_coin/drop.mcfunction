scoreboard players operation #temp TotalDamage = @s TotalDamage
scoreboard players operation #temp LastTotalDamage = @s LastTotalDamage
scoreboard players operation #temp2 LastTotalDamage = #temp LastTotalDamage
scoreboard players operation #temp2 LastTotalDamage %= #2 Constants

execute unless score #temp LastTotalDamage = #temp TotalDamage run function luigis_beta_mansion:entities/player/damage/ghost_coin/drop/loop

scoreboard players reset #temp TotalDamage
scoreboard players reset #temp LastTotalDamage
scoreboard players reset #temp2 LastTotalDamage