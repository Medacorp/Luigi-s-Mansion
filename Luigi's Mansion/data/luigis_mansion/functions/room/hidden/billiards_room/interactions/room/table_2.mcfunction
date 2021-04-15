execute unless score #billiards_room_table_2 Search matches 1 run scoreboard players reset #billiards_room_table_2 Searching
scoreboard players reset #billiards_room_table_2 Search
execute if score #billiards_room_table_2 Searching matches 20 run function luigis_mansion:room/hidden/billiards_room/search_table_2
execute unless block 681 102 -21 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/billiards_room/search_table_2