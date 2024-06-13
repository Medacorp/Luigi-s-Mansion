execute unless score #breaker_room_barrel_9 Search matches 1 run scoreboard players reset #breaker_room_barrel_9 Searching
scoreboard players reset #breaker_room_barrel_9 Search
execute if score #breaker_room_barrel_9 Searching matches 20 run function 3ds_remake:room/hidden/breaker_room/search/boo_check/barrel_9
scoreboard players operation #temp Searching = #breaker_room_barrel_9 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 692 2 -60.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching