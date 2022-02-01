execute unless score #master_bedroom_painting_5 Search matches 1 run scoreboard players reset #master_bedroom_painting_5 Searching
scoreboard players reset #master_bedroom_painting_5 Search
execute if score #master_bedroom_painting_5 Searching matches 20 run function luigis_mansion:room/hidden/master_bedroom/search/painting_5
scoreboard players operation #temp Searching = #master_bedroom_painting_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 696 114 -24 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching