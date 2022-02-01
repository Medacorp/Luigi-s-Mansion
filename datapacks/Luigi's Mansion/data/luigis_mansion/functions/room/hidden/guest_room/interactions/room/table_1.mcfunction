execute unless score #guest_room_table_1 Search matches 1 run scoreboard players reset #guest_room_table_1 Searching
scoreboard players reset #guest_room_table_1 Search
execute if block 742 21 67 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/table_1_flipped
execute if block 742 21 67 minecraft:redstone_lamp unless block 736 26 61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_1_flipped
execute if block 742 21 67 minecraft:redstone_lamp unless block 736 26 60 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_1_flipped
execute unless block 742 21 67 minecraft:redstone_lamp if score #guest_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/table_1
execute unless block 742 21 67 minecraft:redstone_lamp unless block 736 20 61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_1
execute unless block 742 21 67 minecraft:redstone_lamp unless block 736 20 60 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/guest_room/search/table_1
scoreboard players operation #temp Searching = #guest_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 67 minecraft:redstone_lamp positioned 736 27 61.0 run function luigis_mansion:blocks/search_sound/generic
execute unless score #temp Searching matches 1 if block 742 21 67 minecraft:redstone_lamp positioned 736 20 61.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching