execute unless score #conservatory_chair_1 Search matches 1 run scoreboard players reset #conservatory_chair_1 Searching
scoreboard players reset #conservatory_chair_1 Search
execute if score #conservatory_chair_1 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search/boo_check/chair_1
scoreboard players operation #temp Searching = #conservatory_chair_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 655 11 23 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching