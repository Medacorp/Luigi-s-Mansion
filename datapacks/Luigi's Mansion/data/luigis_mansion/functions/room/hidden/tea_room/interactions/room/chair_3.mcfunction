execute unless score #tea_room_chair_3 Search matches 1 run scoreboard players reset #tea_room_chair_3 Searching
scoreboard players reset #tea_room_chair_3 Search
execute if score #tea_room_chair_3 Searching matches 20 run function luigis_mansion:room/hidden/tea_room/search/chair_3
scoreboard players operation #temp Searching = #tea_room_chair_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 20 56 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching