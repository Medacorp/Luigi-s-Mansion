execute unless score #dining_room_closet_1 Search matches 1 run scoreboard players reset #dining_room_closet_1 Searching
scoreboard players reset #dining_room_closet_1 Search
execute if score #dining_room_closet_1 Searching matches 20 run function luigis_mansion:room/normal/dining_room/search/closet_1
execute unless block 699 12 53 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/dining_room/search/closet_1
execute unless block 699 12 51 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/dining_room/search/closet_1