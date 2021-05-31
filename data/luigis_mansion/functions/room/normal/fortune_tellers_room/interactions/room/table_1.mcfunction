execute unless score #fortune_tellers_room_table_1 Search matches 1 run scoreboard players reset #fortune_tellers_room_table_1 Searching
scoreboard players reset #fortune_tellers_room_table_1 Search
execute if score #fortune_tellers_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/fortune_tellers_room/search_table_1
execute unless block 736 11 -22 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/fortune_tellers_room/search_table_1
execute unless block 736 11 -21 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/fortune_tellers_room/search_table_1