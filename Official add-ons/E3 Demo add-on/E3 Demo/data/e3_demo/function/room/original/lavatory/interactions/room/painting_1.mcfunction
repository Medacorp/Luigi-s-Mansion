execute unless score #lavatory_painting_1 Search matches 1 run scoreboard players reset #lavatory_painting_1 Searching
scoreboard players reset #lavatory_painting_1 Search
execute if score #lavatory_painting_1 Searching matches 20 run function e3_demo:room/original/lavatory/search/painting_1
scoreboard players operation #temp Searching = #lavatory_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 13 45 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching