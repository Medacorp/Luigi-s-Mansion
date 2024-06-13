execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.e3_demo.ghost_coin
execute if score #temp Time matches 1.. run function e3_demo:other/drop_loot/loop/ghost_coin
scoreboard players reset #temp Time