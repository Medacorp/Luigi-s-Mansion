execute unless score #hallway_10_painting Search matches 1 run scoreboard players reset #hallway_10_painting Searching
scoreboard players reset #hallway_10_painting Search
execute if score #hallway_10_painting Searching matches 20 run function luigis_mansion:room/hidden/hallway_10/search/painting
scoreboard players operation #temp Searching = #hallway_10_painting Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 669 23 7 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching