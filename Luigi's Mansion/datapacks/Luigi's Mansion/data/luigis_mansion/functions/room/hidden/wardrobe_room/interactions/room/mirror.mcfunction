execute unless score #wardrobe_room_mirror Search matches 1 run scoreboard players reset #wardrobe_room_mirror Searching
scoreboard players reset #wardrobe_room_mirror Search
execute if score #wardrobe_room_mirror Searching matches 20 run function luigis_mansion:room/hidden/wardrobe_room/search/boo_check/mirror
scoreboard players operation #temp Searching = #wardrobe_room_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 677 20 -46.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching