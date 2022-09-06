execute unless score #billiards_room_chair_1 Search matches 1 run scoreboard players reset #billiards_room_chair_1 Searching
scoreboard players reset #billiards_room_chair_1 Search
execute if score #billiards_room_chair_1 Searching matches 20 run function luigis_mansion:room/normal/billiards_room/search/boo_check/chair_1
scoreboard players operation #temp Searching = #billiards_room_chair_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 11 68 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching