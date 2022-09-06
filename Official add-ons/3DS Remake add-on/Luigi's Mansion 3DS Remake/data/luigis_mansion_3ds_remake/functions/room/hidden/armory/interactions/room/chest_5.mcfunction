execute unless score #armory_chest_5 Search matches 1 run scoreboard players reset #armory_chest_5 Searching
scoreboard players reset #armory_chest_5 Search
execute if score #armory_chest_5 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/armory/search/boo_check/chest_5
scoreboard players operation #temp Searching = #armory_chest_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 29 63.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 746 29 63 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/armory/search/boo_check/chest_5
execute unless block 746 29 62 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/armory/search/boo_check/chest_5