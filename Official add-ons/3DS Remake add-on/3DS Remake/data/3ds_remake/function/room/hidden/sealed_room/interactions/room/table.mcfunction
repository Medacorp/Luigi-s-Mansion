execute unless score #sealed_room_table Search matches 1 run scoreboard players reset #sealed_room_table Searching
scoreboard players reset #sealed_room_table Search
execute if score #sealed_room_table Searching matches 20 run function 3ds_remake:room/hidden/sealed_room/search/table
scoreboard players operation #temp Searching = #sealed_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 705.0 20 -68 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching