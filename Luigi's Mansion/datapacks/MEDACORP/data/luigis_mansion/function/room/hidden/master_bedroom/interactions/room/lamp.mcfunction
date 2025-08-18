execute unless score #master_bedroom_lamp Search matches 1 run scoreboard players reset #master_bedroom_lamp Searching
scoreboard players reset #master_bedroom_lamp Search
execute if score #master_bedroom_lamp Searching matches 20 run function luigis_mansion:room/normal/master_bedroom/search/lamp
scoreboard players operation #temp Searching = #master_bedroom_lamp Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 112 -39 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching