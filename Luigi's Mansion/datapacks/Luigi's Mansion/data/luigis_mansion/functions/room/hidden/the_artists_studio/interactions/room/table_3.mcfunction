execute unless score #the_artists_studio_table_3 Search matches 1 run scoreboard players reset #the_artists_studio_table_3 Searching
scoreboard players reset #the_artists_studio_table_3 Search
execute if score #the_artists_studio_table_3 Searching matches 20 run function luigis_mansion:room/hidden/the_artists_studio/search/boo_check/table_3
scoreboard players operation #temp Searching = #the_artists_studio_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 30.5 90 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching