execute unless score #conservatory_chair_3 Search matches 1 run scoreboard players reset #conservatory_chair_3 Searching
scoreboard players reset #conservatory_chair_3 Search
execute if score #conservatory_chair_3 Searching matches 20 run function luigis_mansion:room/normal/conservatory/search/chair_3
scoreboard players operation #temp Searching = #conservatory_chair_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 660 11 -24 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching