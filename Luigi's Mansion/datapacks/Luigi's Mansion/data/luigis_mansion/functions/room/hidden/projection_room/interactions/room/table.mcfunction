execute unless score #projection_room_table Search matches 1 run scoreboard players reset #projection_room_table Searching
scoreboard players reset #projection_room_table Search
execute if score #projection_room_table Searching matches 20 run function luigis_mansion:room/hidden/projection_room/search/boo_check/table
scoreboard players operation #temp Searching = #projection_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 686 11 -23 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching