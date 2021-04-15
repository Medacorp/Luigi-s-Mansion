execute unless score #hidden_room_chest_1 Search matches 1 run scoreboard players reset #hidden_room_chest_1 Searching
scoreboard players reset #hidden_room_chest_1 Search
execute if score #hidden_room_chest_1 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search_chest_1
execute unless block 713 102 -19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_1
execute unless block 712 102 -19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_1