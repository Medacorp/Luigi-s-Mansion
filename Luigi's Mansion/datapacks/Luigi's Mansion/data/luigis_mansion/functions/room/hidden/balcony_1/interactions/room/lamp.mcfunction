execute unless score #balcony_1_lamp Search matches 1 run scoreboard players reset #balcony_1_lamp Searching
scoreboard players reset #balcony_1_lamp Search
execute if score #balcony_1_lamp Searching matches 20 run function luigis_mansion:room/hidden/balcony_1/search/lamp
scoreboard players operation #temp Searching = #balcony_1_lamp Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 677 113 -24 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching