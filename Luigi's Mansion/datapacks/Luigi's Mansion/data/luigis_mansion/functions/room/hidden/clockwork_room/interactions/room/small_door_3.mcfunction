execute unless score #clockwork_room_small_door_3 Search matches 1 run scoreboard players reset #clockwork_room_small_door_3 Searching
scoreboard players reset #clockwork_room_small_door_3 Search
execute if score #clockwork_room_small_door_3 Searching matches 20 run setblock 686 120 5 minecraft:air
scoreboard players operation #temp Searching = #clockwork_room_small_door_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 686 120 5 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching