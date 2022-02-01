execute unless score #secret_altar_mirror Search matches 1 run scoreboard players reset #secret_altar_mirror Searching
scoreboard players reset #secret_altar_mirror Search
execute if score #secret_altar_mirror Searching matches 20 run function luigis_mansion:room/hidden/secret_altar/search/mirror
scoreboard players operation #temp Searching = #secret_altar_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 648 94 41 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching