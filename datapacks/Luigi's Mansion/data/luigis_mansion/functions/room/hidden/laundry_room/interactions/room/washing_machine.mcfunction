execute unless score #laundry_room_washing_machine Search matches 1 run scoreboard players reset #laundry_room_washing_machine Searching
scoreboard players reset #laundry_room_washing_machine Search
execute if score #laundry_room_washing_machine Searching matches 20 run function luigis_mansion:room/hidden/laundry_room/search/washing_machine
scoreboard players operation #temp Searching = #laundry_room_washing_machine Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 715 11 -58 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching