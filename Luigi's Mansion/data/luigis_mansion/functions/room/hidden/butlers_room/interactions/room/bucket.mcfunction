execute unless score #butlers_room_bucket Search matches 1 run scoreboard players reset #butlers_room_bucket Searching
scoreboard players reset #butlers_room_bucket Search
execute if score #butlers_room_bucket Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search_bucket
execute unless block 717 102 -40 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/butlers_room/search_bucket