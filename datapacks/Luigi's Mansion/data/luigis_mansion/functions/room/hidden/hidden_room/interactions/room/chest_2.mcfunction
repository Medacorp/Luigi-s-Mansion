execute unless score #hidden_room_chest_2 Search matches 1 run scoreboard players reset #hidden_room_chest_2 Searching
scoreboard players reset #hidden_room_chest_2 Search
execute if score #hidden_room_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search_chest_2
execute unless block 738 13 -30 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_2
execute unless block 738 13 -29 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_2