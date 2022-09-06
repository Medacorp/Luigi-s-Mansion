execute unless score #study_bottled_ship Search matches 1 run scoreboard players reset #study_bottled_ship Searching
scoreboard players reset #study_bottled_ship Search
execute if score #study_bottled_ship Searching matches 20 run function luigis_beta_mansion:room/original/study/search/bottled_ship
scoreboard players operation #temp Searching = #study_bottled_ship Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 702 24 54 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching