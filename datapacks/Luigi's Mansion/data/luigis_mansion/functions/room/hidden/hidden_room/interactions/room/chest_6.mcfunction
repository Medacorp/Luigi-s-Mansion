execute unless score #hidden_room_chest_6 Search matches 1 run scoreboard players reset #hidden_room_chest_6 Searching
scoreboard players reset #hidden_room_chest_6 Search
execute if score #hidden_room_chest_6 Searching matches 20 run function luigis_mansion:room/hidden/hidden_room/search/chest_6
execute unless block 738 13 -20 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_6
execute unless block 738 13 -19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/hidden_room/search/chest_6