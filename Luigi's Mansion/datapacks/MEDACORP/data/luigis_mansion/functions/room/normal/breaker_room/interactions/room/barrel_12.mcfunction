execute unless score #breaker_room_barrel_12 Search matches 1 run scoreboard players reset #breaker_room_barrel_12 Searching
scoreboard players reset #breaker_room_barrel_12 Search
execute if score #breaker_room_barrel_12 Searching matches 20 run function luigis_mansion:room/normal/breaker_room/search/boo_check/barrel_12
scoreboard players operation #temp Searching = #breaker_room_barrel_12 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 694 2 -60.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching