execute unless score #conservatory_painting_3 Search matches 1 run scoreboard players reset #conservatory_painting_3 Searching
scoreboard players reset #conservatory_painting_3 Search
execute if score #conservatory_painting_3 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search/painting_3
scoreboard players operation #temp Searching = #conservatory_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 656 14 42 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching