execute unless score #telephone_room_table Search matches 1 run scoreboard players reset #telephone_room_table Searching
scoreboard players reset #telephone_room_table Search
execute if score #telephone_room_table Searching matches 20 run function luigis_mansion:room/normal/telephone_room/search/table_vacuum
scoreboard players operation #temp Searching = #telephone_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 745.0 29 30.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching