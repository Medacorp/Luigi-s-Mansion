execute unless score #kitchen_closet Search matches 1 run scoreboard players reset #kitchen_closet Searching
scoreboard players reset #kitchen_closet Search
execute if score #kitchen_closet Searching matches 20 run function luigis_beta_mansion:room/original/kitchen/search/closet
scoreboard players operation #temp Searching = #kitchen_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 12 65 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching