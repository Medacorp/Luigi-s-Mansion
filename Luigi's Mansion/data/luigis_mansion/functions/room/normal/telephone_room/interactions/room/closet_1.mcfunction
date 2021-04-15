execute unless score #telephone_room_closet_1 Search matches 1 run scoreboard players reset #telephone_room_closet_1 Searching
scoreboard players reset #telephone_room_closet_1 Search
execute if score #telephone_room_closet_1 Searching matches 20 run function luigis_mansion:room/normal/telephone_room/search_closet_1
execute unless block 700 120 19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_closet_1
execute unless block 700 120 20 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_closet_1