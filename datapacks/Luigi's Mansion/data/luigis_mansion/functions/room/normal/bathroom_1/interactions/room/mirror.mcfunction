execute unless score #bathroom_1_mirror Search matches 1 run scoreboard players reset #bathroom_1_mirror Searching
scoreboard players reset #bathroom_1_mirror Search
execute if score #bathroom_1_mirror Searching matches 20 run function luigis_mansion:room/normal/bathroom_1/search/boo_check/mirror
scoreboard players operation #temp Searching = #bathroom_1_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 651.0 12 18 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching