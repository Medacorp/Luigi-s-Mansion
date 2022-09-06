execute unless score #lavatory_radiator Search matches 1 run scoreboard players reset #lavatory_radiator Searching
scoreboard players reset #lavatory_radiator Search
execute if score #lavatory_radiator Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/radiator
scoreboard players operation #temp Searching = #lavatory_radiator Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 11 37.0 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching