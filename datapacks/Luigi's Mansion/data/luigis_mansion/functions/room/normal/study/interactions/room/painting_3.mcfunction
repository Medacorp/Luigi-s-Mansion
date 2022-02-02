execute unless score #study_painting_3 Search matches 1 run scoreboard players reset #study_painting_3 Searching
scoreboard players reset #study_painting_3 Search
execute if score #study_painting_3 Searching matches 20 run function luigis_mansion:room/normal/study/search/boo_check/painting_3
scoreboard players operation #temp Searching = #study_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 715 22 53.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching