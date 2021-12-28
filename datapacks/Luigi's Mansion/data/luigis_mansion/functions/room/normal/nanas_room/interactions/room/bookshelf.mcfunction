execute unless score #nanas_room_bookshelf Search matches 1 run scoreboard players reset #nanas_room_bookshelf Searching
scoreboard players reset #nanas_room_bookshelf Search
execute if score #nanas_room_bookshelf Searching matches 20 run function luigis_mansion:room/normal/nanas_room/search_bookshelf
execute unless block 654 20 -15 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/nanas_room/search_bookshelf