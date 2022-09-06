execute unless score #courtyard_lamp_2 Search matches 1 run scoreboard players reset #courtyard_lamp_2 Searching
scoreboard players reset #courtyard_lamp_2 Search
execute if score #courtyard_lamp_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/courtyard/search/lamp_2
scoreboard players operation #temp Searching = #courtyard_lamp_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 645 103 -26 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching