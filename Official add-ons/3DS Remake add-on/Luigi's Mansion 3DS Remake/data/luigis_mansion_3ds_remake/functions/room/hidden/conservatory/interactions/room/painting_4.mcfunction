execute unless score #conservatory_painting_4 Search matches 1 run scoreboard players reset #conservatory_painting_4 Searching
scoreboard players reset #conservatory_painting_4 Search
execute if score #conservatory_painting_4 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/conservatory/search/boo_check/painting_4
scoreboard players operation #temp Searching = #conservatory_painting_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 658 13 -27 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching