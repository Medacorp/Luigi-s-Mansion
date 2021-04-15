execute unless score #armory_chest_3 Search matches 1 run scoreboard players reset #armory_chest_3 Searching
scoreboard players reset #armory_chest_3 Search
execute if score #armory_chest_3 Searching matches 20 run function luigis_mansion:room/hidden/armory/search_chest_3
execute unless block 701 120 -33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_3
execute unless block 701 120 -32 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_3