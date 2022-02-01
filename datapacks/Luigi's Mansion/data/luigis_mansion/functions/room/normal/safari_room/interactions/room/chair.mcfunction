execute unless score #safari_room_chair Search matches 1 run scoreboard players reset #safari_room_chair Searching
scoreboard players reset #safari_room_chair Search
execute if score #safari_room_chair Searching matches 20 run function luigis_mansion:room/normal/safari_room/search/chair
scoreboard players operation #temp Searching = #safari_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 740 29 -56 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching