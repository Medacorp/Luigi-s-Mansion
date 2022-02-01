execute unless score #breaker_room_table Search matches 1 run scoreboard players reset #breaker_room_table Searching
scoreboard players reset #breaker_room_table Search
execute if score #breaker_room_table Searching matches 20 run function luigis_mansion:room/normal/breaker_room/search/table_vacuum
scoreboard players operation #temp Searching = #breaker_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695 2 -44.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching