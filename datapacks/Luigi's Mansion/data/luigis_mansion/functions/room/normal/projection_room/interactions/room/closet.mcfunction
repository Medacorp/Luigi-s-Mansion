execute unless score #projection_room_closet Search matches 1 run scoreboard players reset #projection_room_closet Searching
scoreboard players reset #projection_room_closet Search
execute if score #projection_room_closet Searching matches 20 run function luigis_mansion:room/normal/projection_room/search/closet
execute unless block 684 11 32 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/projection_room/search/closet
execute unless block 683 11 32 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/projection_room/search/closet