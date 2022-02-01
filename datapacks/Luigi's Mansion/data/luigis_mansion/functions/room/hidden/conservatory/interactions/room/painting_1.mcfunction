execute unless score #conservatory_painting_1 Search matches 1 run scoreboard players reset #conservatory_painting_1 Searching
scoreboard players reset #conservatory_painting_1 Search
execute if score #conservatory_painting_1 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search/painting_1
scoreboard players operation #temp Searching = #conservatory_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 654 14 24 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching