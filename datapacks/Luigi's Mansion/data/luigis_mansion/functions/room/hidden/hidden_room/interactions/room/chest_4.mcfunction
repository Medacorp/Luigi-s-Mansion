execute unless score #hidden_room_chest_4 Search matches 1 run scoreboard players reset #hidden_room_chest_4 Searching
scoreboard players reset #hidden_room_chest_4 Search
execute if score #hidden_room_chest_4 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search/chest_4
scoreboard players operation #temp Searching = #hidden_room_chest_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 739 11 -24.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 739 11 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_4
execute unless block 739 11 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_4