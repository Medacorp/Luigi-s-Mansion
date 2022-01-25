execute unless score #pipe_room_bucket Search matches 1 run scoreboard players reset #pipe_room_bucket Searching
scoreboard players reset #pipe_room_bucket Search
execute if score #pipe_room_bucket Searching matches 20 run function luigis_mansion:room/hidden/pipe_room/search/bucket
execute unless block 698 2 19 minecraft:hopper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/pipe_room/search/bucket