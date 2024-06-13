execute unless score #bathroom_1_bathtub Search matches 1 run scoreboard players reset #bathroom_1_bathtub Searching
scoreboard players reset #bathroom_1_bathtub Search
execute if score #bathroom_1_bathtub Searching matches 20 run function 3ds_remake:room/hidden/bathroom_1/search/boo_check/bathtub
scoreboard players operation #temp Searching = #bathroom_1_bathtub Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 651 11 24.0 run function luigis_mansion:blocks/search_sound/stone
scoreboard players reset #temp Searching