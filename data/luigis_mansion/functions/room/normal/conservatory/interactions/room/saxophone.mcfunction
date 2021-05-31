execute unless score #conservatory_saxophone Search matches 1 run scoreboard players reset #conservatory_saxophone Searching
scoreboard players reset #conservatory_saxophone Search
scoreboard players operation #temp Searching = #conservatory_saxophone Searching
scoreboard players operation #temp Searching %= #5 Constants
execute if score #temp Searching matches 1 positioned 658 11 -4 run function luigis_mansion:blocks/shake/saxophone
scoreboard players reset #temp Searching
execute if score #conservatory_saxophone Searching matches 20 run function luigis_mansion:room/normal/conservatory/search_saxophone