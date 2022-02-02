execute unless score #rec_room_bike_2 Search matches 1 run scoreboard players reset #rec_room_bike_2 Searching
scoreboard players reset #rec_room_bike_2 Search
execute if score #rec_room_bike_2 Searching matches 20 run function luigis_mansion:room/normal/rec_room/search/boo_check/bike_2
scoreboard players operation #temp Searching = #rec_room_bike_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 11 -59 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching