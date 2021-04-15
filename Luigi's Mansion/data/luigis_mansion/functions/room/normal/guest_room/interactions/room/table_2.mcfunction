execute unless score #guest_room_table_2 Search matches 1 run scoreboard players reset #guest_room_table_2 Searching
scoreboard players reset #guest_room_table_2 Search
execute if block 713 112 -31 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_2_flipped
execute if block 713 112 -31 minecraft:redstone_lamp unless block 715 117 -40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_2_flipped
execute unless block 713 112 -31 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_table_2
execute unless block 713 112 -31 minecraft:redstone_lamp unless block 715 111 -40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search_table_2