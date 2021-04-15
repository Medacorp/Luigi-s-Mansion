execute unless score #armory_chest_2 Search matches 1 run scoreboard players reset #armory_chest_2 Searching
scoreboard players reset #armory_chest_2 Search
execute if score #armory_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/armory/search_chest_2
execute unless block 715 120 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_2
execute unless block 714 120 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search_chest_2