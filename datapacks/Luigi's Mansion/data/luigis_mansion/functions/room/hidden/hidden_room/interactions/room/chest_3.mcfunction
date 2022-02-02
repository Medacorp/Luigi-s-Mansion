execute unless score #hidden_room_chest_3 Search matches 1 run scoreboard players reset #hidden_room_chest_3 Searching
scoreboard players reset #hidden_room_chest_3 Search
execute if score #hidden_room_chest_3 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search/boo_check/chest_3
scoreboard players operation #temp Searching = #hidden_room_chest_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 11 -27.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 746 11 -28 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/boo_check/chest_3
execute unless block 746 11 -27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/boo_check/chest_3