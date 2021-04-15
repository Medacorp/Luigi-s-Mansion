execute unless score #safari_room_deer_head_1 Search matches 1 run scoreboard players reset #safari_room_deer_head_1 Searching
scoreboard players reset #safari_room_deer_head_1 Search
execute if score #safari_room_deer_head_1 Searching matches 20 run function luigis_mansion:room/hidden/safari_room/search_deer_head_1
execute unless block 706 123 39 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/safari_room/search_deer_head_1