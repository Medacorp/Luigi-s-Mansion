execute unless score #lavatory_shelf Search matches 1 run scoreboard players reset #lavatory_shelf Searching
scoreboard players reset #lavatory_shelf Search
execute if score #lavatory_shelf Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/shelf
scoreboard players operation #temp Searching = #lavatory_shelf Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 13 43.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching