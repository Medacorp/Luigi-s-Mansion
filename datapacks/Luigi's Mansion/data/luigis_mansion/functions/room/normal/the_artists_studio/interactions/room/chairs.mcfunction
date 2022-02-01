execute unless score #the_artists_studio_chairs Search matches 1 run scoreboard players reset #the_artists_studio_chairs Searching
scoreboard players reset #the_artists_studio_chairs Search
execute if score #the_artists_studio_chairs Searching matches 20 run function luigis_mansion:room/normal/the_artists_studio/search/chairs
scoreboard players operation #temp Searching = #the_artists_studio_chairs Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 702 29 -57 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching