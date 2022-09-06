execute unless score #billiards_room_painting_6 Search matches 1 run scoreboard players reset #billiards_room_painting_6 Searching
scoreboard players reset #billiards_room_painting_6 Search
execute if score #billiards_room_painting_6 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/billiards_room/search/boo_check/painting_6
scoreboard players operation #temp Searching = #billiards_room_painting_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 677 13 66 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching