execute unless score #the_artists_studio_painting_2 Search matches 1 run scoreboard players reset #the_artists_studio_painting_2 Searching
scoreboard players reset #the_artists_studio_painting_2 Search
execute if score #the_artists_studio_painting_2 Searching matches 20 run function luigis_mansion:room/normal/the_artists_studio/search/boo_check/painting_2
scoreboard players operation #temp Searching = #the_artists_studio_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 694 29 -60 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching