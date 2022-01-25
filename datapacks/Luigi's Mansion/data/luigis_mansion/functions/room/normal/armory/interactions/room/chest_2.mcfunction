execute unless score #armory_chest_2 Search matches 1 run scoreboard players reset #armory_chest_2 Searching
scoreboard players reset #armory_chest_2 Search
execute if score #armory_chest_2 Searching matches 20 run function luigis_mansion:room/normal/armory/search/chest_2
execute unless block 761 29 74 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_2
execute unless block 760 29 74 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/chest_2