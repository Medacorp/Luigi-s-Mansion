execute unless score #master_bedroom_painting_3 Search matches 1 run scoreboard players reset #master_bedroom_painting_3 Searching
scoreboard players reset #master_bedroom_painting_3 Search
execute if score #master_bedroom_painting_3 Searching matches 20 run function luigis_mansion:room/hidden/master_bedroom/search/painting_3
scoreboard players operation #temp Searching = #master_bedroom_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 697 113 -29 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching