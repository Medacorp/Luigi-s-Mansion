execute unless score #ceramics_studio_crate_2 Search matches 1 run scoreboard players reset #ceramics_studio_crate_2 Searching
scoreboard players reset #ceramics_studio_crate_2 Search
execute if score #ceramics_studio_crate_2 Searching matches 20 run function luigis_mansion:room/hidden/ceramics_studio/search/crate_2
scoreboard players operation #temp Searching = #ceramics_studio_crate_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 701.0 29 -62.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching