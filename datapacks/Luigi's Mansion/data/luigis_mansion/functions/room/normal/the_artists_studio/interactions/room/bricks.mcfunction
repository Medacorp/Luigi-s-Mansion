execute unless score #the_artists_studio_bricks Search matches 1 run scoreboard players reset #the_artists_studio_bricks Searching
scoreboard players reset #the_artists_studio_bricks Search
execute if score #the_artists_studio_bricks Searching matches 20 run function luigis_mansion:room/normal/the_artists_studio/search/bricks
scoreboard players operation #temp Searching = #the_artists_studio_bricks Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699.0 29.5 -75.0 run function luigis_mansion:blocks/search_sound/concrete
scoreboard players reset #temp Searching