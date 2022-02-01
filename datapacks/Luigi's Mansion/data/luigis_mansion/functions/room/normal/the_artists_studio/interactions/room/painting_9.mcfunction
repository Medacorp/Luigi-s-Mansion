execute unless score #the_artists_studio_painting_9 Search matches 1 run scoreboard players reset #the_artists_studio_painting_9 Searching
scoreboard players reset #the_artists_studio_painting_9 Search
execute if score #the_artists_studio_painting_9 Searching matches 20 run function luigis_mansion:room/normal/the_artists_studio/search/painting_9
scoreboard players operation #temp Searching = #the_artists_studio_painting_9 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 701 29.5 -75 run function luigis_mansion:blocks/search_sound/concrete
scoreboard players reset #temp Searching