execute unless score #master_bedroom_plant Search matches 1 run scoreboard players reset #master_bedroom_plant Searching
scoreboard players reset #master_bedroom_plant Search
execute if score #master_bedroom_plant Searching matches 20 run function luigis_mansion:room/normal/master_bedroom/search/plant
scoreboard players operation #temp Searching = #master_bedroom_plant Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 686 111 55 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching