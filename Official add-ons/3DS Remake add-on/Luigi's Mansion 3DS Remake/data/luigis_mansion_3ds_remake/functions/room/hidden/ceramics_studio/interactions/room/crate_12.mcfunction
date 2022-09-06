execute unless score #ceramics_studio_crate_12 Search matches 1 run scoreboard players reset #ceramics_studio_crate_12 Searching
scoreboard players reset #ceramics_studio_crate_12 Search
execute if score #ceramics_studio_crate_12 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/ceramics_studio/search/boo_check/crate_12
scoreboard players operation #temp Searching = #ceramics_studio_crate_12 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699.0 29 73.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching