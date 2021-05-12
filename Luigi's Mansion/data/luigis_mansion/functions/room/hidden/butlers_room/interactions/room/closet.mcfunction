execute unless score #butlers_room_closet Search matches 1 run scoreboard players reset #butlers_room_closet Searching
scoreboard players reset #butlers_room_closet Search
execute if score #butlers_room_closet Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search_closet
execute unless block 739 11 -52 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search_closet
execute unless block 739 14 -52 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search_closet
execute unless block 739 11 -50 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search_closet
execute unless block 739 14 -50 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search_closet