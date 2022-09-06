execute unless score #kitchen_shelf_3 Search matches 1 run scoreboard players reset #kitchen_shelf_3 Searching
scoreboard players reset #kitchen_shelf_3 Search
execute if score #kitchen_shelf_3 Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/shelf_3
scoreboard players operation #temp Searching = #kitchen_shelf_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 709 15 75 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching