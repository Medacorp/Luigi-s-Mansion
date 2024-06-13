execute unless score #master_bedroom_mirror Search matches 1 run scoreboard players reset #master_bedroom_mirror Searching
scoreboard players reset #master_bedroom_mirror Search
execute if score #master_bedroom_mirror Searching matches 20 run function 3ds_remake:room/hidden/master_bedroom/search/boo_check/mirror
scoreboard players operation #temp Searching = #master_bedroom_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 689.0 112 40.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching