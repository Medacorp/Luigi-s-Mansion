execute unless score #tea_room_drawer_1 Search matches 1 run scoreboard players reset #tea_room_drawer_1 Searching
scoreboard players reset #tea_room_drawer_1 Search
execute if score #tea_room_drawer_1 Searching matches 20 run function luigis_mansion:room/hidden/tea_room/search/drawer_1
scoreboard players operation #temp Searching = #tea_room_drawer_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 20 46 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 641 20 46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/tea_room/search/drawer_1
execute unless block 642 20 46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/tea_room/search/drawer_1
execute unless block 644 20 46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/tea_room/search/drawer_1
execute unless block 645 20 46 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/tea_room/search/drawer_1