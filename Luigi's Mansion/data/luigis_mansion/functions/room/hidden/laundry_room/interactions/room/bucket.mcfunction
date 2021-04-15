execute unless score #laundry_room_bucket Search matches 1 run scoreboard players reset #laundry_room_bucket Searching
scoreboard players reset #laundry_room_bucket Search
execute if score #laundry_room_bucket Searching matches 20 run function luigis_mansion:room/hidden/laundry_room/search_bucket
execute unless block 700 102 -26 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/laundry_room/search_bucket