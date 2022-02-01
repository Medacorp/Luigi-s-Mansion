execute unless score #billiards_room_darting_board Search matches 1 run scoreboard players reset #billiards_room_darting_board Searching
scoreboard players reset #billiards_room_darting_board Search
execute if score #billiards_room_darting_board Searching matches 20 run function luigis_mansion:room/hidden/billiards_room/search/darting_board
scoreboard players operation #temp Searching = #billiards_room_darting_board Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 675 13 -67.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching