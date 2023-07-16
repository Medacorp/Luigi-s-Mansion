execute unless score #balcony_2_plant_4 Search matches 1 run scoreboard players reset #balcony_2_plant_4 Searching
scoreboard players reset #balcony_2_plant_4 Search
execute if score #balcony_2_plant_4 Searching matches 20 run function 3ds_remake:room/hidden/balcony_2/search/plant_4
scoreboard players operation #temp Searching = #balcony_2_plant_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 676 120 36 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching