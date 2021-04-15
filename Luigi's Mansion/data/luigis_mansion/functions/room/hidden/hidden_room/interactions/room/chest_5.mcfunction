execute unless score #hidden_room_chest_5 Search matches 1 run scoreboard players reset #hidden_room_chest_5 Searching
scoreboard players reset #hidden_room_chest_5 Search
execute if score #hidden_room_chest_5 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search_chest_5
execute unless block 715 102 -10 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_5
execute unless block 715 102 -9 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_5