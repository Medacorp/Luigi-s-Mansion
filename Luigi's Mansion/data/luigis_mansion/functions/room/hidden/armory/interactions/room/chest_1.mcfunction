execute unless score #armory_chest_1 Search matches 1 run scoreboard players reset #armory_chest_1 Searching
scoreboard players reset #armory_chest_1 Search
execute if score #armory_chest_1 Searching matches 20 run function luigis_mansion:room/hidden/armory/search_chest_1
execute unless block 704 120 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_1
execute unless block 703 120 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_1