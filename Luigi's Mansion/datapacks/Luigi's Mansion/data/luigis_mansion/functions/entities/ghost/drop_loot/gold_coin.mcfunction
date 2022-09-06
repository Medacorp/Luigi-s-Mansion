execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.gold_coin
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/gold_coin
scoreboard players reset #temp Time