execute unless score #the_artists_studio_painting_1 Search matches 1 run scoreboard players reset #the_artists_studio_painting_1 Searching
scoreboard players reset #the_artists_studio_painting_1 Search
execute if score #the_artists_studio_painting_1 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/the_artists_studio/search/boo_check/painting_1
scoreboard players operation #temp Searching = #the_artists_studio_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 29 -58 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching