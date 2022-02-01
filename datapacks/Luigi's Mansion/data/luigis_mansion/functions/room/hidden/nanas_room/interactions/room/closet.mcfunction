execute unless score #nanas_room_closet Search matches 1 run scoreboard players reset #nanas_room_closet Searching
scoreboard players reset #nanas_room_closet Search
execute if score #nanas_room_closet Searching matches 20 run function luigis_mansion:room/hidden/nanas_room/search/closet
scoreboard players operation #temp Searching = #nanas_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 20 42 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 661 20 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nanas_room/search/closet
execute unless block 662 20 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nanas_room/search/closet
execute unless block 661 21 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nanas_room/search/closet
execute unless block 662 21 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nanas_room/search/closet