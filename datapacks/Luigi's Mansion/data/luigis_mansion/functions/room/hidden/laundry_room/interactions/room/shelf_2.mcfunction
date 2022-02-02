execute unless score #laundry_room_shelf_2 Search matches 1 run scoreboard players reset #laundry_room_shelf_2 Searching
scoreboard players reset #laundry_room_shelf_2 Search
execute if score #laundry_room_shelf_2 Searching matches 20 run function luigis_mansion:room/hidden/laundry_room/search/boo_check/shelf_2
scoreboard players operation #temp Searching = #laundry_room_shelf_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 14 -46 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching