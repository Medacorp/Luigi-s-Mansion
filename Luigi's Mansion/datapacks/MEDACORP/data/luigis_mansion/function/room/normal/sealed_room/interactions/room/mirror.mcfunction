execute unless score #sealed_room_mirror Search matches 1 run scoreboard players reset #sealed_room_mirror Searching
scoreboard players reset #sealed_room_mirror Search
execute if score #sealed_room_mirror Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/mirror
scoreboard players operation #temp Searching = #sealed_room_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 694 23 -82.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching