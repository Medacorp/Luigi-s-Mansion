execute unless score #projection_room_closet Search matches 1 run scoreboard players reset #projection_room_closet Searching
scoreboard players reset #projection_room_closet Search
execute if score #projection_room_closet Searching matches 20 run function luigis_mansion:room/hidden/projection_room/search/closet
scoreboard players operation #temp Searching = #projection_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 684.0 11 -17 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 684 11 -17 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/projection_room/search/closet
execute unless block 683 11 -17 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/projection_room/search/closet