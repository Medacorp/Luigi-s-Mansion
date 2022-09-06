execute unless score #ball_room_painting_3 Search matches 1 run scoreboard players reset #ball_room_painting_3 Searching
scoreboard players reset #ball_room_painting_3 Search
execute if score #ball_room_painting_3 Searching matches 20 run function luigis_mansion:room/hidden/ball_room/search/boo_check/painting_3
scoreboard players operation #temp Searching = #ball_room_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 710 12 65 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching