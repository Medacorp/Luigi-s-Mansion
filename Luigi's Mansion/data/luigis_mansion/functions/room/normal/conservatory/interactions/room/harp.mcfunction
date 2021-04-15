execute unless score #conservatory_harp Search matches 1 run scoreboard players reset #conservatory_harp Searching
scoreboard players reset #conservatory_harp Search
scoreboard players operation #temp Searching = #conservatory_harp Searching
scoreboard players operation #temp Searching %= #5 Constants
execute if score #temp Searching matches 1 positioned 656.0 11 -6.0 run function luigis_mansion:blocks/shake/harp
scoreboard players reset #temp Searching
execute if score #conservatory_harp Searching matches 20 run function luigis_mansion:room/normal/conservatory/search_harp