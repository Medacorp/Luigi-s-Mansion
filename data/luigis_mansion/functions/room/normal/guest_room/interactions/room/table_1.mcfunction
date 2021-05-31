execute unless score #guest_room_table_1 Search matches 1 run scoreboard players reset #guest_room_table_1 Searching
scoreboard players reset #guest_room_table_1 Search
execute if block 742 21 -52 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute if block 742 21 -52 minecraft:redstone_lamp unless block 736 26 -46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute if block 742 21 -52 minecraft:redstone_lamp unless block 736 26 -45 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_1
execute unless block 742 21 -52 minecraft:redstone_lamp unless block 736 20 -46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1
execute unless block 742 21 -52 minecraft:redstone_lamp unless block 736 20 -45 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_1