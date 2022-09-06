execute unless score #master_bedroom_painting_1 Search matches 1 run scoreboard players reset #master_bedroom_painting_1 Searching
scoreboard players reset #master_bedroom_painting_1 Search
execute if score #master_bedroom_painting_1 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/master_bedroom/search/boo_check/painting_1
scoreboard players operation #temp Searching = #master_bedroom_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 113 55 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching