execute unless score #storage_room_mirror Search matches 1 run scoreboard players reset #storage_room_mirror Searching
scoreboard players reset #storage_room_mirror Search
execute if score #storage_room_mirror Searching matches 20 run function luigis_mansion:room/hidden/storage_room/search/mirror
scoreboard players operation #temp Searching = #storage_room_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 680 12 75 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching