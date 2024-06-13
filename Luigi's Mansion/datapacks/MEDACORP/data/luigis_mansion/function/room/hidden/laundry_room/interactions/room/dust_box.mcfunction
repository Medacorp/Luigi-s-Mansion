execute unless score #laundry_room_dust_box Search matches 1 run scoreboard players reset #laundry_room_dust_box Searching
scoreboard players reset #laundry_room_dust_box Search
execute if score #laundry_room_dust_box Searching matches 20 run function luigis_mansion:room/hidden/laundry_room/search/boo_check/dust_box
scoreboard players operation #temp Searching = #laundry_room_dust_box Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 11 -45 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching