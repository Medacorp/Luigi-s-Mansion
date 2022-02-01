execute unless score #billiards_room_chair_2 Search matches 1 run scoreboard players reset #billiards_room_chair_2 Searching
scoreboard players reset #billiards_room_chair_2 Search
execute if score #billiards_room_chair_2 Searching matches 20 run function luigis_mansion:room/normal/billiards_room/search/chair_2
scoreboard players operation #temp Searching = #billiards_room_chair_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 684 11 67 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching