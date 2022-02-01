execute unless score #hidden_room_chest_7 Search matches 1 run scoreboard players reset #hidden_room_chest_7 Searching
scoreboard players reset #hidden_room_chest_7 Search
execute if score #hidden_room_chest_7 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search/chest_7
scoreboard players operation #temp Searching = #hidden_room_chest_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 744.0 11 -18 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 744 11 -18 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_7
execute unless block 743 11 -18 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_7