execute unless score #billiards_room_chess_table Search matches 1 run scoreboard players reset #billiards_room_chess_table Searching
scoreboard players reset #billiards_room_chess_table Search
execute if score #billiards_room_chess_table Searching matches 20 run function luigis_mansion:room/hidden/billiards_room/search/chess_table
scoreboard players operation #temp Searching = #billiards_room_chess_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 11 -52 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching