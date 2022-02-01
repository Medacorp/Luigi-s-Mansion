execute unless score #balcony_1_plant_4 Search matches 1 run scoreboard players reset #balcony_1_plant_4 Searching
scoreboard players reset #balcony_1_plant_4 Search
execute if score #balcony_1_plant_4 Searching matches 20 run function luigis_mansion:room/normal/balcony_1/search/plant_4
scoreboard players operation #temp Searching = #balcony_1_plant_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 674 111 39 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching