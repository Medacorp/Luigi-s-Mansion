execute unless score #armory_chest_5 Search matches 1 run scoreboard players reset #armory_chest_5 Searching
scoreboard players reset #armory_chest_5 Search
execute if score #armory_chest_5 Searching matches 20 run function luigis_mansion:room/normal/armory/search/chest_5
execute unless block 746 29 63 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_5
execute unless block 746 29 62 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_5