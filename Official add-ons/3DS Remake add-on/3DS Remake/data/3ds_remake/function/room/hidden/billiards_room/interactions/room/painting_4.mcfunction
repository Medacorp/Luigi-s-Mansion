execute unless score #billiards_room_painting_4 Search matches 1 run scoreboard players reset #billiards_room_painting_4 Searching
scoreboard players reset #billiards_room_painting_4 Search
execute if score #billiards_room_painting_4 Searching matches 20 run function 3ds_remake:room/hidden/billiards_room/search/boo_check/painting_4
scoreboard players operation #temp Searching = #billiards_room_painting_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 675 12 73 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching