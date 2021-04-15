execute unless score #sitting_room_table_1 Search matches 1 run scoreboard players reset #sitting_room_table_1 Searching
scoreboard players reset #sitting_room_table_1 Search
execute if score #sitting_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/sitting_room/search_table_1
execute unless block 717 111 -4 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sitting_room/search_table_1
execute unless block 717 112 -4 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/sitting_room/search_table_1