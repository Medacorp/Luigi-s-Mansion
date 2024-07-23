execute unless score #courtyard_plant_4 Search matches 1 run scoreboard players reset #courtyard_plant_4 Searching
scoreboard players reset #courtyard_plant_4 Search
execute if score #courtyard_plant_4 Searching matches 20 run function 3ds_remake:room/hidden/courtyard/search/plant_4
scoreboard players operation #temp Searching = #courtyard_plant_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 650 102 7 run function luigis_mansion:blocks/search_sound/plant
scoreboard players reset #temp Searching