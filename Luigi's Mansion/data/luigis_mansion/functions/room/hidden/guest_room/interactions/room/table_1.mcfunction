execute unless score #guest_room_table_1 Search matches 1 run scoreboard players reset #guest_room_table_1 Searching
scoreboard players reset #guest_room_table_1 Search
execute if block 741 21 68 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_table_1_flipped
execute if block 741 21 68 minecraft:redstone_lamp unless block 736 26 61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search_table_1_flipped
execute if block 741 21 68 minecraft:redstone_lamp unless block 736 26 60 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search_table_1_flipped
execute unless block 741 21 68 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_table_1
execute unless block 741 21 68 minecraft:redstone_lamp unless block 736 20 61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search_table_1
execute unless block 741 21 68 minecraft:redstone_lamp unless block 736 20 60 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search_table_1