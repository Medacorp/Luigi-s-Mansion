execute unless score #laundry_room_broom Search matches 1 run scoreboard players reset #laundry_room_broom Searching
scoreboard players reset #laundry_room_broom Search
execute if score #laundry_room_broom Searching matches 20 run function luigis_mansion:room/hidden/laundry_room/search/broom
scoreboard players operation #temp Searching = #laundry_room_broom Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 11 -47 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching