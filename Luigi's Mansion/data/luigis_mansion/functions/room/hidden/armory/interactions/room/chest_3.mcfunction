execute unless score #armory_chest_3 Search matches 1 run scoreboard players reset #armory_chest_3 Searching
scoreboard players reset #armory_chest_3 Search
execute if score #armory_chest_3 Searching matches 20 run function luigis_mansion:room/hidden/armory/search_chest_3
execute unless block 747 29 -56 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_3
execute unless block 747 29 -55 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_3