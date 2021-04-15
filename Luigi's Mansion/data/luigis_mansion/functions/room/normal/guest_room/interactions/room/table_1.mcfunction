execute unless score #guest_room_table_1 Search matches 1 run scoreboard players reset #guest_room_table_1 Searching
scoreboard players reset #guest_room_table_1 Search
execute if block 713 112 -31 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute if block 713 112 -31 minecraft:redstone_lamp unless block 707 117 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute if block 713 112 -31 minecraft:redstone_lamp unless block 707 117 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute unless block 713 112 -31 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_1
execute unless block 713 112 -31 minecraft:redstone_lamp unless block 707 111 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1
execute unless block 713 112 -31 minecraft:redstone_lamp unless block 707 111 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1