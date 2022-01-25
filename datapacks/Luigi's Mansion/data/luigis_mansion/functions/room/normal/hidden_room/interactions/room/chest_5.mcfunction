execute unless score #hidden_room_chest_5 Search matches 1 run scoreboard players reset #hidden_room_chest_5 Searching
scoreboard players reset #hidden_room_chest_5 Search
execute if score #hidden_room_chest_5 Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/chest_5
execute unless block 746 11 37 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/chest_5
execute unless block 746 11 36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/chest_5