execute unless score #dining_room_closet_1 Search matches 1 run scoreboard players reset #dining_room_closet_1 Searching
scoreboard players reset #dining_room_closet_1 Search
execute if score #dining_room_closet_1 Searching matches 20 run function luigis_mansion:room/hidden/dining_room/search_closet_1
execute unless block 687 103 -7 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/dining_room/search_closet_1
execute unless block 687 103 -5 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/dining_room/search_closet_1