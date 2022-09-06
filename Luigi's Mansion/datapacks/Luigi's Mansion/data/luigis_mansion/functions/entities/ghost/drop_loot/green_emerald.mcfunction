execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.green_emerald
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/green_emerald
scoreboard players reset #temp Time