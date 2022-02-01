execute unless score #clockwork_room_small_door_5 Search matches 1 run scoreboard players reset #clockwork_room_small_door_5 Searching
scoreboard players reset #clockwork_room_small_door_5 Search
execute if score #clockwork_room_small_door_5 Searching matches 20 run setblock 685 120 15 minecraft:air
scoreboard players operation #temp Searching = #clockwork_room_small_door_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 120 15 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching