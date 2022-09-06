execute unless score #hidden_room_chest_5 Search matches 1 run scoreboard players reset #hidden_room_chest_5 Searching
scoreboard players reset #hidden_room_chest_5 Search
execute if score #hidden_room_chest_5 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/hidden_room/search/boo_check/chest_5
scoreboard players operation #temp Searching = #hidden_room_chest_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 11 37.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 746 11 37 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/hidden_room/search/boo_check/chest_5
execute unless block 746 11 36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion_3ds_remake:room/hidden/hidden_room/search/boo_check/chest_5