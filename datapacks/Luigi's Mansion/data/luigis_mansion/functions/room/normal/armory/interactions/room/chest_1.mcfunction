execute unless score #armory_chest_1 Search matches 1 run scoreboard players reset #armory_chest_1 Searching
scoreboard players reset #armory_chest_1 Search
execute if score #armory_chest_1 Searching matches 20 run function luigis_mansion:room/normal/armory/search/chest_1
execute unless block 750 29 74 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_1
execute unless block 749 29 74 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_1