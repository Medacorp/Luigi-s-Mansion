execute unless score #laundry_room_closet Search matches 1 run scoreboard players reset #laundry_room_closet Searching
scoreboard players reset #laundry_room_closet Search
execute if score #laundry_room_closet Searching matches 20 run function 3ds_remake:room/hidden/laundry_room/search/boo_check/closet
scoreboard players operation #temp Searching = #laundry_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 11 68 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching