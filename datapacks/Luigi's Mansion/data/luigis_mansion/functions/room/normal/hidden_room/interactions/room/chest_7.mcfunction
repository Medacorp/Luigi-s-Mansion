execute unless score #hidden_room_chest_7 Search matches 1 run scoreboard players reset #hidden_room_chest_7 Searching
scoreboard players reset #hidden_room_chest_7 Search
execute if score #hidden_room_chest_7 Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/chest_7
execute unless block 744 11 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/chest_7
execute unless block 743 11 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/hidden_room/search/chest_7