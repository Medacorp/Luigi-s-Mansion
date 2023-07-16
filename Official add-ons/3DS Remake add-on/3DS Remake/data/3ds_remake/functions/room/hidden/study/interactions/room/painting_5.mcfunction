execute unless score #study_painting_5 Search matches 1 run scoreboard players reset #study_painting_5 Searching
scoreboard players reset #study_painting_5 Search
execute if score #study_painting_5 Searching matches 20 run function 3ds_remake:room/hidden/study/search/boo_check/painting_5
scoreboard players operation #temp Searching = #study_painting_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 712 22 44 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching