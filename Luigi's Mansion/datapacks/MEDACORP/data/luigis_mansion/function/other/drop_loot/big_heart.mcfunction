execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.big_heart
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/big_heart
scoreboard players reset #temp Time