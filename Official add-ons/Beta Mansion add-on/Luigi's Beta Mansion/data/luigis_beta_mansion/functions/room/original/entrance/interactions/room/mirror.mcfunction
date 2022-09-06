execute unless score #entrance_mirror Search matches 1 run scoreboard players reset #entrance_mirror Searching
scoreboard players reset #entrance_mirror Search
execute if score #entrance_mirror Searching matches 20 run function luigis_beta_mansion:room/original/entrance/search/mirror
scoreboard players operation #temp Searching = #entrance_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747.0 12 4.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching