execute unless score #telephone_room_closet_2 Search matches 1 run scoreboard players reset #telephone_room_closet_2 Searching
scoreboard players reset #telephone_room_closet_2 Search
execute if score #telephone_room_closet_2 Searching matches 20 run function luigis_mansion:room/normal/telephone_room/search_closet_2
execute unless block 703 120 -8 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_closet_2
execute unless block 704 120 -8 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/telephone_room/search_closet_2