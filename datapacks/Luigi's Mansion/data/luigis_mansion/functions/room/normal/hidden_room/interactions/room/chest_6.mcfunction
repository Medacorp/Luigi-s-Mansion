execute unless score #hidden_room_chest_6 Search matches 1 run scoreboard players reset #hidden_room_chest_6 Searching
scoreboard players reset #hidden_room_chest_6 Search
execute if score #hidden_room_chest_6 Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_6
scoreboard players operation #temp Searching = #hidden_room_chest_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 13 35.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 738 13 35 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_6
execute unless block 738 13 34 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_6