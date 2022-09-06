execute unless score #courtyard_plant_3 Search matches 1 run scoreboard players reset #courtyard_plant_3 Searching
scoreboard players reset #courtyard_plant_3 Search
execute if score #courtyard_plant_3 Searching matches 20 run function luigis_mansion:room/hidden/courtyard/search/plant_3
scoreboard players operation #temp Searching = #courtyard_plant_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 646 102 8 run function luigis_mansion:blocks/search_sound/plant
scoreboard players reset #temp Searching