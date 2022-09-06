execute unless score #laundry_room_broom Search matches 1 run scoreboard players reset #laundry_room_broom Searching
scoreboard players reset #laundry_room_broom Search
execute if score #laundry_room_broom Searching matches 20 run function luigis_mansion:room/normal/laundry_room/search/boo_check/broom
scoreboard players operation #temp Searching = #laundry_room_broom Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 11 62 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching