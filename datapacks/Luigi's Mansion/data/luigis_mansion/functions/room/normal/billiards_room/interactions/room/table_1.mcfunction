execute unless score #billiards_room_table_1 Search matches 1 run scoreboard players reset #billiards_room_table_1 Searching
scoreboard players reset #billiards_room_table_1 Search
execute if score #billiards_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/billiards_room/search/table_1
execute unless block 679 11 88 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/billiards_room/search/table_1