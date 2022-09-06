execute unless score #study_chair Search matches 1 run scoreboard players reset #study_chair Searching
scoreboard players reset #study_chair Search
execute if score #study_chair Searching matches 20 run function luigis_beta_mansion:room/original/study/search/chair
scoreboard players operation #temp Searching = #study_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 706 20 48 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching