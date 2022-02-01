execute unless score #kitchen_shelf_1 Search matches 1 run scoreboard players reset #kitchen_shelf_1 Searching
scoreboard players reset #kitchen_shelf_1 Search
execute if score #kitchen_shelf_1 Searching matches 20 run function luigis_mansion:room/hidden/kitchen/search/shelf_1
scoreboard players operation #temp Searching = #kitchen_shelf_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 16 -73.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching