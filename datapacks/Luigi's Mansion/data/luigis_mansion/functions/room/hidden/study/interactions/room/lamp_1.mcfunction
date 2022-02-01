execute unless score #study_lamp_1 Search matches 1 run scoreboard players reset #study_lamp_1 Searching
scoreboard players reset #study_lamp_1 Search
execute if score #study_lamp_1 Searching matches 20 run function luigis_mansion:room/hidden/study/search/lamp_1
scoreboard players operation #temp Searching = #study_lamp_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 715 20 -46 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching