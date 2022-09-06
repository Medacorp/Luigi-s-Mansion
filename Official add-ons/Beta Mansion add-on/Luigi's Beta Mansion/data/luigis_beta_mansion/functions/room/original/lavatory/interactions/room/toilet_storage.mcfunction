execute unless score #lavatory_toilet_storage Search matches 1 run scoreboard players reset #lavatory_toilet_storage Searching
scoreboard players reset #lavatory_toilet_storage Search
execute if score #lavatory_toilet_storage Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/toilet_storage
scoreboard players operation #temp Searching = #lavatory_toilet_storage Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 664 14 46 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching