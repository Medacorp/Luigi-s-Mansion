execute unless score #telephone_room_chest_2 Search matches 1 run scoreboard players reset #telephone_room_chest_2 Searching
scoreboard players reset #telephone_room_chest_2 Search
execute if score #telephone_room_chest_2 Searching matches 20 run function luigis_mansion:room/hidden/telephone_room/search_chest_2
execute unless block 712 120 22 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/telephone_room/search_chest_2
execute unless block 713 120 22 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/telephone_room/search_chest_2