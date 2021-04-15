execute unless score #conservatory_drum_1 Search matches 1 run scoreboard players reset #conservatory_drum_1 Searching
scoreboard players reset #conservatory_drum_1 Search
scoreboard players operation #temp Searching = #conservatory_drum_1 Searching
scoreboard players operation #temp Searching %= #5 Constants
execute if score #temp Searching matches 1 positioned 657 102 9 run function luigis_mansion:blocks/shake/drum
scoreboard players reset #temp Searching
execute if score #conservatory_drum_1 Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search_drum_1