execute unless score #conservatory_xylophone Search matches 1 run scoreboard players reset #conservatory_xylophone Searching
scoreboard players reset #conservatory_xylophone Search
scoreboard players operation #temp Searching = #conservatory_xylophone Searching
scoreboard players operation #temp Searching %= #5 Constants
execute if score #temp Searching matches 1 positioned 662 102 12 run function luigis_mansion:blocks/shake/xylophone
scoreboard players reset #temp Searching
execute if score #conservatory_xylophone Searching matches 20 run function luigis_mansion:room/hidden/conservatory/search_xylophone