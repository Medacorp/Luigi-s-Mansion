execute unless score #hidden_room_chest_3 Search matches 1 run scoreboard players reset #hidden_room_chest_3 Searching
scoreboard players reset #hidden_room_chest_3 Search
execute if score #hidden_room_chest_3 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search_chest_3
execute unless block 715 102 -16 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_3
execute unless block 715 102 -15 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search_chest_3