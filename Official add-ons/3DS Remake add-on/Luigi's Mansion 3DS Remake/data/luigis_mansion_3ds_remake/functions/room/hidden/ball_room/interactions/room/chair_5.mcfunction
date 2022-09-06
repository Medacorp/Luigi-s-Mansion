execute unless score #ball_room_chair_5 Search matches 1 run scoreboard players reset #ball_room_chair_5 Searching
scoreboard players reset #ball_room_chair_5 Search
execute if score #ball_room_chair_5 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/ball_room/search/boo_check/chair_5
scoreboard players operation #temp Searching = #ball_room_chair_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 697 11 -56 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching