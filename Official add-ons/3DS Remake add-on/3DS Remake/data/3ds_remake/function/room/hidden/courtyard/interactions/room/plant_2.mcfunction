execute unless score #courtyard_stone_bowl_potted_fern_2 Search matches 1 run scoreboard players reset #courtyard_stone_bowl_potted_fern_2 Searching
scoreboard players reset #courtyard_stone_bowl_potted_fern_2 Search
execute if score #courtyard_stone_bowl_potted_fern_2 Searching matches 20 run function 3ds_remake:room/hidden/courtyard/search/plant_2
scoreboard players operation #temp Searching = #courtyard_stone_bowl_potted_fern_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 650 102 15 run function luigis_mansion:blocks/search_sound/plant
scoreboard players reset #temp Searching