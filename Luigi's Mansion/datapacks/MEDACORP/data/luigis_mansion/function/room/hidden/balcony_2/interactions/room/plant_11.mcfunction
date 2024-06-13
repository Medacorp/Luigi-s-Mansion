execute unless score #balcony_2_plant_11 Search matches 1 run scoreboard players reset #balcony_2_plant_11 Searching
scoreboard players reset #balcony_2_plant_11 Search
execute if score #balcony_2_plant_11 Searching matches 20 run function luigis_mansion:room/hidden/balcony_2/search/plant_11
scoreboard players operation #temp Searching = #balcony_2_plant_11 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 655 120 48 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching