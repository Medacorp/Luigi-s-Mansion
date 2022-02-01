execute unless score #nanas_room_bookshelf Search matches 1 run scoreboard players reset #nanas_room_bookshelf Searching
scoreboard players reset #nanas_room_bookshelf Search
execute if score #nanas_room_bookshelf Searching matches 20 run function luigis_mansion:room/normal/nanas_room/search/bookshelf
scoreboard players operation #temp Searching = #nanas_room_bookshelf Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 654 20 -15 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 654 20 -15 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/nanas_room/search/bookshelf