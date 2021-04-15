execute unless score #armory_chest_5 Search matches 1 run scoreboard players reset #armory_chest_5 Searching
scoreboard players reset #armory_chest_5 Search
execute if score #armory_chest_5 Searching matches 20 run function luigis_mansion:room/hidden/armory/search_chest_5
execute unless block 700 120 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_5
execute unless block 700 120 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_5