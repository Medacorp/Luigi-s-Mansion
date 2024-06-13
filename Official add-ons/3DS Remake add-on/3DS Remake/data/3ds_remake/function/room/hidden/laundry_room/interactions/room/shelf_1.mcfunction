execute unless score #laundry_room_shelf_1 Search matches 1 run scoreboard players reset #laundry_room_shelf_1 Searching
scoreboard players reset #laundry_room_shelf_1 Search
execute if score #laundry_room_shelf_1 Searching matches 20 run function 3ds_remake:room/hidden/laundry_room/search/boo_check/shelf_1
scoreboard players operation #temp Searching = #laundry_room_shelf_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 14 73 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching