execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.bill
execute if score #temp Time matches 1.. run function luigis_mansion:entities/ghost/drop_loot/loop/bill
scoreboard players reset #temp Time