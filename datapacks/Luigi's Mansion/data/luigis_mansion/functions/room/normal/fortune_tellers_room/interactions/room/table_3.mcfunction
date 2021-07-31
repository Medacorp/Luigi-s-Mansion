execute unless score #fortune_tellers_room_table_3 Search matches 1 run scoreboard players reset #fortune_tellers_room_table_3 Searching
scoreboard players reset #fortune_tellers_room_table_3 Search
execute if score #fortune_tellers_room_table_3 Searching matches 20 run function luigis_mansion:room/normal/fortune_tellers_room/search_table_3
execute unless block 736 11 -37 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/fortune_tellers_room/search_table_3
execute unless block 736 11 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/fortune_tellers_room/search_table_3