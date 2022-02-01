execute unless score #clockwork_room_puppet_2 Search matches 1 run scoreboard players reset #clockwork_room_puppet_2 Searching
scoreboard players reset #clockwork_room_puppet_2 Search
execute if score #clockwork_room_puppet_2 Searching matches 20 run function luigis_mansion:room/hidden/clockwork_room/search/puppet_2
scoreboard players operation #temp Searching = #clockwork_room_puppet_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 689.0 122 23.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching