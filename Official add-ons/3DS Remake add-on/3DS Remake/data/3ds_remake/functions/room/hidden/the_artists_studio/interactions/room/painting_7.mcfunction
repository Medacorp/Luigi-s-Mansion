execute unless score #the_artists_studio_painting_7 Search matches 1 run scoreboard players reset #the_artists_studio_painting_7 Searching
scoreboard players reset #the_artists_studio_painting_7 Search
execute if score #the_artists_studio_painting_7 Searching matches 20 run function 3ds_remake:room/hidden/the_artists_studio/search/boo_check/painting_7
scoreboard players operation #temp Searching = #the_artists_studio_painting_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 693 29 -70 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching