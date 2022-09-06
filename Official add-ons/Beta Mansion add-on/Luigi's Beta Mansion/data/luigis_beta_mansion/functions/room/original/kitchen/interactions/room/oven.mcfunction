execute unless score #kitchen_oven Search matches 1 run scoreboard players reset #kitchen_oven Searching
scoreboard players reset #kitchen_oven Search
execute if score #kitchen_oven Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/oven
scoreboard players operation #temp Searching = #kitchen_oven Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 701 11 75.0 run function luigis_mansion:blocks/search_sound/oven
scoreboard players reset #temp Searching