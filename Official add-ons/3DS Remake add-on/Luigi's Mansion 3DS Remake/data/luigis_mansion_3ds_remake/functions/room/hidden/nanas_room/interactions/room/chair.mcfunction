execute unless score #nanas_room_chair Search matches 1 run scoreboard players reset #nanas_room_chair Searching
scoreboard players reset #nanas_room_chair Search
execute if score #nanas_room_chair Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/nanas_room/search/boo_check/chair
scoreboard players operation #temp Searching = #nanas_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 658 20 -23 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching