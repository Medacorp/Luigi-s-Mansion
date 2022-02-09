execute unless score #foyer_mirror Search matches 1 run scoreboard players reset #foyer_mirror Searching
scoreboard players reset #foyer_mirror Search
execute if score #foyer_mirror Searching matches 20 run function luigis_mansion:room/hidden/foyer/search/mirror_vacuum
scoreboard players operation #temp Searching = #foyer_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747.0 12 12.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching