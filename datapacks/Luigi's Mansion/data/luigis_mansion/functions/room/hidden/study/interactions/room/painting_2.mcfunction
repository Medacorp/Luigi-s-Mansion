execute unless score #study_painting_2 Search matches 1 run scoreboard players reset #study_painting_2 Searching
scoreboard players reset #study_painting_2 Search
execute if score #study_painting_2 Searching matches 20 run function luigis_mansion:room/hidden/study/search/boo_check/painting_2
scoreboard players operation #temp Searching = #study_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 711 22 -46 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching