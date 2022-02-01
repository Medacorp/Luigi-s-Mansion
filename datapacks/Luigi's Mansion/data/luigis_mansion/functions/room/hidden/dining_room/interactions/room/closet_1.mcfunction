execute unless score #dining_room_closet_1 Search matches 1 run scoreboard players reset #dining_room_closet_1 Searching
scoreboard players reset #dining_room_closet_1 Search
execute if score #dining_room_closet_1 Searching matches 20 run function luigis_mansion:room/hidden/dining_room/search/closet_1
scoreboard players operation #temp Searching = #dining_room_closet_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 12 -37 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 699 12 -38 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/dining_room/search/closet_1
execute unless block 699 12 -36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/dining_room/search/closet_1