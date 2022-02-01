execute unless score #conservatory_lectern_2 Search matches 1 run scoreboard players reset #conservatory_lectern_2 Searching
scoreboard players reset #conservatory_lectern_2 Search
execute if score #conservatory_lectern_2 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search/lectern_2
scoreboard players operation #temp Searching = #conservatory_lectern_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 660 11 33 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching