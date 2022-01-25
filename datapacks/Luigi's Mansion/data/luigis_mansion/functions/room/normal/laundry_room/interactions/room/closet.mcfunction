execute unless score #laundry_room_closet Search matches 1 run scoreboard players reset #laundry_room_closet Searching
scoreboard players reset #laundry_room_closet Search
execute if score #laundry_room_closet Searching matches 20 run function luigis_mansion:room/normal/laundry_room/search/closet
execute unless block 714 11 68 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/laundry_room/search/closet