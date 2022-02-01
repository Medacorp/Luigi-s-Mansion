execute unless score #breaker_room_barrel_13 Search matches 1 run scoreboard players reset #breaker_room_barrel_13 Searching
scoreboard players reset #breaker_room_barrel_13 Search
execute if score #breaker_room_barrel_13 Searching matches 20 run function luigis_mansion:room/hidden/breaker_room/search/barrel_13
scoreboard players operation #temp Searching = #breaker_room_barrel_13 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 2 76.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching