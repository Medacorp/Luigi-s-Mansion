execute unless score #armory_chest_4 Search matches 1 run scoreboard players reset #armory_chest_4 Searching
scoreboard players reset #armory_chest_4 Search
execute if score #armory_chest_4 Searching matches 20 run function luigis_mansion:room/normal/armory/search/boo_check/chest_4
scoreboard players operation #temp Searching = #armory_chest_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 29 67.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 746 29 67 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/boo_check/chest_4
execute unless block 746 29 66 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/armory/search/boo_check/chest_4