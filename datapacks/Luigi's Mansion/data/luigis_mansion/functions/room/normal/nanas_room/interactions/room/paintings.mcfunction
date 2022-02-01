execute unless score #nanas_room_paintings Search matches 1 run scoreboard players reset #nanas_room_paintings Searching
scoreboard players reset #nanas_room_paintings Search
execute if score #nanas_room_paintings Searching matches 20 run function luigis_mansion:room/normal/nanas_room/search/paintings
scoreboard players operation #temp Searching = #nanas_room_paintings Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 654 22 -15 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching