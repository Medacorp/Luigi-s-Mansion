execute unless score #armory_mirror Search matches 1 run scoreboard players reset #armory_mirror Searching
scoreboard players reset #armory_mirror Search
execute if score #armory_mirror Searching matches 20 run function 3ds_remake:room/hidden/armory/search/boo_check/mirror
scoreboard players operation #temp Searching = #armory_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 745 31 65.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching