execute unless score #hallway_5_painting Search matches 1 run scoreboard players reset #hallway_5_painting Searching
scoreboard players reset #hallway_5_painting Search
execute if score #hallway_5_painting Searching matches 20 run function luigis_beta_mansion:room/original/hallway_5/search/painting
scoreboard players operation #temp Searching = #hallway_5_painting Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 680 14 -19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching