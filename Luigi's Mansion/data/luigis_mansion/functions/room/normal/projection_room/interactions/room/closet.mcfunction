execute unless score #projection_room_closet Search matches 1 run scoreboard players reset #projection_room_closet Searching
scoreboard players reset #projection_room_closet Search
execute if score #projection_room_closet Searching matches 20 run function luigis_mansion:room/normal/projection_room/search_closet
execute unless block 682 102 -1 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/projection_room/search_closet
execute unless block 681 102 -1 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/projection_room/search_closet