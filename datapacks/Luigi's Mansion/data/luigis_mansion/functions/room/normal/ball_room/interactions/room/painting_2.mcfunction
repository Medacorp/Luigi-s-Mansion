execute unless score #ball_room_painting_2 Search matches 1 run scoreboard players reset #ball_room_painting_2 Searching
scoreboard players reset #ball_room_painting_2 Search
execute if score #ball_room_painting_2 Searching matches 20 run function luigis_mansion:room/normal/ball_room/search/painting_2
scoreboard players operation #temp Searching = #ball_room_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 697 12 -50 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching