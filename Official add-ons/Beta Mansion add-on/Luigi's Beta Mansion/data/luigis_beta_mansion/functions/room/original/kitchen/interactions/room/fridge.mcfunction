execute unless score #kitchen_fridge Search matches 1 run scoreboard players reset #kitchen_fridge Searching
scoreboard players reset #kitchen_fridge Search
execute if score #kitchen_fridge Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/fridge
scoreboard players operation #temp Searching = #kitchen_fridge Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 701 11 70.0 run function luigis_mansion:blocks/search_sound/fridge
scoreboard players reset #temp Searching