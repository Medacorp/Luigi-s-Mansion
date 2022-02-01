execute unless score #fortune_tellers_room_table_3 Search matches 1 run scoreboard players reset #fortune_tellers_room_table_3 Searching
scoreboard players reset #fortune_tellers_room_table_3 Search
execute if score #fortune_tellers_room_table_3 Searching matches 20 run function luigis_mansion:room/hidden/fortune_tellers_room/search/table_3
scoreboard players operation #temp Searching = #fortune_tellers_room_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 736 11 52.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 736 11 52 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/fortune_tellers_room/search/table_3
execute unless block 736 11 51 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/fortune_tellers_room/search/table_3