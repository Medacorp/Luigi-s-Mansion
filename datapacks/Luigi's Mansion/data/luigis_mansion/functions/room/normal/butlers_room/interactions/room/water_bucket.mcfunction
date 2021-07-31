execute unless score #butlers_room_water_bucket Search matches 1 run scoreboard players reset #butlers_room_water_bucket Searching
scoreboard players reset #butlers_room_water_bucket Search
execute if score #butlers_room_water_bucket Searching matches 20 run function luigis_mansion:room/normal/butlers_room/search_water_bucket
execute unless block 747 11 55 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/butlers_room/search_water_bucket