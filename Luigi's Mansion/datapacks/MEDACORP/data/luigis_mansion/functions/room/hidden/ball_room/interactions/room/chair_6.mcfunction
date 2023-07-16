execute unless score #ball_room_chair_6 Search matches 1 run scoreboard players reset #ball_room_chair_6 Searching
scoreboard players reset #ball_room_chair_6 Search
execute if score #ball_room_chair_6 Searching matches 20 run function luigis_mansion:room/hidden/ball_room/search/boo_check/chair_6
scoreboard players operation #temp Searching = #ball_room_chair_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 710 11 71 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching