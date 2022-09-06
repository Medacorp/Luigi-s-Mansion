execute unless score #study_lamp_1 Search matches 1 run scoreboard players reset #study_lamp_1 Searching
scoreboard players reset #study_lamp_1 Search
execute if score #study_lamp_1 Searching matches 20 run function luigis_beta_mansion:room/original/study/search/lamp_1
scoreboard players operation #temp Searching = #study_lamp_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 705 20 59 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching