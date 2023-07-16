execute unless score #tea_room_shelf_2 Search matches 1 run scoreboard players reset #tea_room_shelf_2 Searching
scoreboard players reset #tea_room_shelf_2 Search
execute if score #tea_room_shelf_2 Searching matches 20 run function 3ds_remake:room/hidden/tea_room/search/boo_check/shelf_2
scoreboard players operation #temp Searching = #tea_room_shelf_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 643 22 -60 run function luigis_mansion:blocks/search_sound/ceramic
scoreboard players reset #temp Searching