execute unless score #the_twins_room_bunk_bed Search matches 1 run scoreboard players reset #the_twins_room_bunk_bed Searching
scoreboard players reset #the_twins_room_bunk_bed Search
execute if score #the_twins_room_bunk_bed Searching matches 20 run function luigis_mansion:room/hidden/the_twins_room/search/bunk_bed
scoreboard players operation #temp Searching = #the_twins_room_bunk_bed Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 739 21 -19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching