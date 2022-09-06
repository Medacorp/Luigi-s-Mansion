execute unless score #conservatory_painting_2 Search matches 1 run scoreboard players reset #conservatory_painting_2 Searching
scoreboard players reset #conservatory_painting_2 Search
execute if score #conservatory_painting_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/conservatory/search/boo_check/painting_2
scoreboard players operation #temp Searching = #conservatory_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 654 14 -15 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching