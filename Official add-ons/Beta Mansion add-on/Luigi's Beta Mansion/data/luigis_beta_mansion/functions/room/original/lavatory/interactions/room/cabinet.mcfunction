execute unless score #lavatory_cabinet Search matches 1 run scoreboard players reset #lavatory_cabinet Searching
scoreboard players reset #lavatory_cabinet Search
execute if score #lavatory_cabinet Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/cabinet
scoreboard players operation #temp Searching = #lavatory_cabinet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 14 37.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching