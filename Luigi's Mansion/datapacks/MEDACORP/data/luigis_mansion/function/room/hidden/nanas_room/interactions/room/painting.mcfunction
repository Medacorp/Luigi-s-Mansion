execute unless score #nanas_room_painting Search matches 1 run scoreboard players reset #nanas_room_painting Searching
scoreboard players reset #nanas_room_painting Search
execute if score #nanas_room_painting Searching matches 20 run function luigis_mansion:room/hidden/nanas_room/search/boo_check/painting
scoreboard players operation #temp Searching = #nanas_room_painting Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 22 12 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching