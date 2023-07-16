execute unless score #breaker_room_mirror Search matches 1 run scoreboard players reset #breaker_room_mirror Searching
scoreboard players reset #breaker_room_mirror Search
execute if score #breaker_room_mirror Searching matches 20 run function 3ds_remake:room/hidden/breaker_room/search/boo_check/mirror
scoreboard players operation #temp Searching = #breaker_room_mirror Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 3 -51.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching