execute unless score #armory_chest_2 Search matches 1 run scoreboard players reset #armory_chest_2 Searching
scoreboard players reset #armory_chest_2 Search
execute if score #armory_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/armory/search/boo_check/chest_2
scoreboard players operation #temp Searching = #armory_chest_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 761.0 29 89 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 761 29 89 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search/boo_check/chest_2
execute unless block 760 29 89 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/armory/search/boo_check/chest_2