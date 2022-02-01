execute unless score #hidden_room_mirror Search matches 1 run scoreboard players reset #hidden_room_mirror Searching
scoreboard players reset #hidden_room_mirror Search
execute if score #hidden_room_mirror Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/mirror
scoreboard players operation #temp Searching = #hidden_room_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 749 12 40.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching