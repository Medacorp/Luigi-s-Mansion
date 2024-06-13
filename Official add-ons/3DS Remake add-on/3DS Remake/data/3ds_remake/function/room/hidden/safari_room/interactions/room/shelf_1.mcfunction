execute unless score #safari_room_shelf_1 Search matches 1 run scoreboard players reset #safari_room_shelf_1 Searching
scoreboard players reset #safari_room_shelf_1 Search
execute if score #safari_room_shelf_1 Searching matches 20 run function 3ds_remake:room/hidden/safari_room/search/boo_check/shelf_1
scoreboard players operation #temp Searching = #safari_room_shelf_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 734 29 -44 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching