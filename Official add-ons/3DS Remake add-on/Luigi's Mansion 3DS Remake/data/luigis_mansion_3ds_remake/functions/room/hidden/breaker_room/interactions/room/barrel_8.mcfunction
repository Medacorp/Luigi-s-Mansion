execute unless score #breaker_room_barrel_8 Search matches 1 run scoreboard players reset #breaker_room_barrel_8 Searching
scoreboard players reset #breaker_room_barrel_8 Search
execute if score #breaker_room_barrel_8 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/breaker_room/search/boo_check/barrel_8
scoreboard players operation #temp Searching = #breaker_room_barrel_8 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 691 3 -60.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching