execute unless score #mirror_room_table Search matches 1 run scoreboard players reset #mirror_room_table Searching
scoreboard players reset #mirror_room_table Search
execute if score #mirror_room_table Searching matches 20 run function luigis_mansion:room/hidden/mirror_room/search/boo_check/table
scoreboard players operation #temp Searching = #mirror_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 741.0 11 76 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching