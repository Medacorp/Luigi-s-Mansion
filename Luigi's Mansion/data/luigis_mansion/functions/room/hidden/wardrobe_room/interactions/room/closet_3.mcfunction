execute unless score #wardrobe_room_closet_3 Search matches 1 run scoreboard players reset #wardrobe_room_closet_3 Searching
scoreboard players reset #wardrobe_room_closet_3 Search
execute if score #wardrobe_room_closet_3 Searching matches 20 run function luigis_mansion:room/hidden/wardrobe_room/search_closet_3
execute unless block 679 21 -43 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/wardrobe_room/search_closet_3