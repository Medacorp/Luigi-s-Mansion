execute unless score #tea_room_chair_5 Search matches 1 run scoreboard players reset #tea_room_chair_5 Searching
scoreboard players reset #tea_room_chair_5 Search
execute if score #tea_room_chair_5 Searching matches 20 run function 3ds_remake:room/hidden/tea_room/search/boo_check/chair_5
scoreboard players operation #temp Searching = #tea_room_chair_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 20 -50 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching