execute unless score #mirror_room_painting Search matches 1 run scoreboard players reset #mirror_room_painting Searching
scoreboard players reset #mirror_room_painting Search
execute if score #mirror_room_painting Searching matches 20 run function luigis_mansion:room/hidden/mirror_room/search/painting
scoreboard players operation #temp Searching = #mirror_room_painting Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741 12 76 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching