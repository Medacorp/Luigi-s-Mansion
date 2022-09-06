execute unless score #lavatory_toilet_paper Search matches 1 run scoreboard players reset #lavatory_toilet_paper Searching
scoreboard players reset #lavatory_toilet_paper Search
execute if score #lavatory_toilet_paper Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/toilet_paper
scoreboard players operation #temp Searching = #lavatory_toilet_paper Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 12 44 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching