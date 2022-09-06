execute unless score #sitting_room_table_1 Search matches 1 run scoreboard players reset #sitting_room_table_1 Searching
scoreboard players reset #sitting_room_table_1 Search
execute if score #sitting_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/sitting_room/search/boo_check/table_1
scoreboard players operation #temp Searching = #sitting_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 21 36 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching
execute unless block 746 21 36 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/sitting_room/search/boo_check/table_1