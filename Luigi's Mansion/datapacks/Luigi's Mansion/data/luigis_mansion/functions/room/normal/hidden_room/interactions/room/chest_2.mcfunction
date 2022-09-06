execute unless score #hidden_room_chest_2 Search matches 1 run scoreboard players reset #hidden_room_chest_2 Searching
scoreboard players reset #hidden_room_chest_2 Search
execute if score #hidden_room_chest_2 Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_2
scoreboard players operation #temp Searching = #hidden_room_chest_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 13 45.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 738 13 45 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_2
execute unless block 738 13 44 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_2