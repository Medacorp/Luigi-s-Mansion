execute unless score #master_bedroom_bed Search matches 1 run scoreboard players reset #master_bedroom_bed Searching
scoreboard players reset #master_bedroom_bed Search
execute if score #master_bedroom_bed Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/master_bedroom/search/boo_check/bed
scoreboard players operation #temp Searching = #master_bedroom_bed Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 691.0 112 53 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching