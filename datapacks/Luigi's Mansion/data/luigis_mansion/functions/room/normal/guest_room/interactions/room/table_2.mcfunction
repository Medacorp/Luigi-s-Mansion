execute unless score #guest_room_table_2 Search matches 1 run scoreboard players reset #guest_room_table_2 Searching
scoreboard players reset #guest_room_table_2 Search
execute if block 742 21 -52 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search/table_2_flipped
execute if block 742 21 -52 minecraft:redstone_lamp unless block 744 26 -61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search/table_2_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if score #guest_room_table_2 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search/boo_check/table_2
execute unless block 742 21 -52 minecraft:redstone_lamp unless block 744 20 -61 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/guest_room/search/boo_check/table_2
scoreboard players operation #temp Searching = #guest_room_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 -52 minecraft:redstone_lamp positioned 744 27 -61 run function luigis_mansion:blocks/search_sound/wood
execute if score #temp Searching matches 1 unless block 742 21 -52 minecraft:redstone_lamp positioned 744 20 -61 run function luigis_mansion:blocks/search_sound/wood
scoreboard players reset #temp Searching