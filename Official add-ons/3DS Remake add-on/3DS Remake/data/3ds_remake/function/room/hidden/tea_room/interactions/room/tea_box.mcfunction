execute unless score #tea_room_tea_box Search matches 1 run scoreboard players reset #tea_room_tea_box Searching
scoreboard players reset #tea_room_tea_box Search
execute if score #tea_room_tea_box Searching matches 20 run function 3ds_remake:room/hidden/tea_room/search/boo_check/tea_box
scoreboard players operation #temp Searching = #tea_room_tea_box Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 21 -52 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching