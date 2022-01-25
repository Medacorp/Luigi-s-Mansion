execute unless score #laundry_room_bucket Search matches 1 run scoreboard players reset #laundry_room_bucket Searching
scoreboard players reset #laundry_room_bucket Search
execute if score #laundry_room_bucket Searching matches 20 run function luigis_mansion:room/normal/laundry_room/search/bucket
execute unless block 714 11 61 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/laundry_room/search/bucket