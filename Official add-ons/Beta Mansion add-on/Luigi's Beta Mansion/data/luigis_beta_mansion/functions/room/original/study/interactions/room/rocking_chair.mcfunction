execute unless score #study_rocking_chair Search matches 1 run scoreboard players reset #study_rocking_chair Searching
scoreboard players reset #study_rocking_chair Search
execute if score #study_rocking_chair Searching matches 20 run function luigis_beta_mansion:room/original/study/search/rocking_chair
scoreboard players operation #temp Searching = #study_rocking_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 709.0 20 57.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching