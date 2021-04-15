execute unless score #conservatory_drum_2 Search matches 1 run scoreboard players reset #conservatory_drum_2 Searching
scoreboard players reset #conservatory_drum_2 Search
scoreboard players operation #temp Searching = #conservatory_drum_2 Searching
scoreboard players operation #temp Searching %= #5 Constants
execute if score #temp Searching matches 1 positioned 658 102 11 run function luigis_mansion:blocks/shake/drum
scoreboard players reset #temp Searching
execute if score #conservatory_drum_2 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search_drum_2