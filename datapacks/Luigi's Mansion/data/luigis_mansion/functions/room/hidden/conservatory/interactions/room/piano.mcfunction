execute unless score #conservatory_piano Search matches 1 run scoreboard players reset #conservatory_piano Searching
scoreboard players reset #conservatory_piano Search
execute if score #conservatory_piano Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search/piano
scoreboard players operation #temp Searching = #conservatory_piano Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 658 11 37 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching