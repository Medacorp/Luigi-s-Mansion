execute unless score #wardrobe_room_closet_1 Search matches 1 run scoreboard players reset #wardrobe_room_closet_1 Searching
scoreboard players reset #wardrobe_room_closet_1 Search
execute if score #wardrobe_room_closet_1 Searching matches 20 run function luigis_mansion:room/hidden/wardrobe_room/search_closet_1
execute unless block 674 112 -20 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/wardrobe_room/search_closet_1