execute unless score #guest_room_table_2 Search matches 1 run scoreboard players reset #guest_room_table_2 Searching
scoreboard players reset #guest_room_table_2 Search
execute if block 741 21 68 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/table_2_flipped
execute if block 741 21 68 minecraft:redstone_lamp unless block 744 26 76 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_2_flipped
execute unless block 741 21 68 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/table_2
execute unless block 741 21 68 minecraft:redstone_lamp unless block 744 20 76 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_2