execute unless score #ceramics_studio_crate_4 Search matches 1 run scoreboard players reset #ceramics_studio_crate_4 Searching
scoreboard players reset #ceramics_studio_crate_4 Search
execute if score #ceramics_studio_crate_4 Searching matches 20 run function luigis_mansion:room/normal/ceramics_studio/search/crate_4
scoreboard players operation #temp Searching = #ceramics_studio_crate_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 707.0 29 78.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching