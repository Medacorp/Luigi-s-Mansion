execute unless score #kitchen_dish_washer Search matches 1 run scoreboard players reset #kitchen_dish_washer Searching
scoreboard players reset #kitchen_dish_washer Search
execute if score #kitchen_dish_washer Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/dish_washer
scoreboard players operation #temp Searching = #kitchen_dish_washer Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 700 11 85.0 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching