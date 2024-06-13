execute unless score #conservatory_lectern_1 Search matches 1 run scoreboard players reset #conservatory_lectern_1 Searching
scoreboard players reset #conservatory_lectern_1 Search
execute if score #conservatory_lectern_1 Searching matches 20 run function 3ds_remake:room/hidden/conservatory/search/boo_check/lectern_1
scoreboard players operation #temp Searching = #conservatory_lectern_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 656 11 -9 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching