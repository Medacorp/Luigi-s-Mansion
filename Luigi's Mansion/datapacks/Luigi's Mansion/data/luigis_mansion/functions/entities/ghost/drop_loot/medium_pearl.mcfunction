execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.medium_pearl
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/medium_pearl
scoreboard players reset #temp Time