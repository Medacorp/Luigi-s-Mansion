execute unless score #safari_room_table Search matches 1 run scoreboard players reset #safari_room_table Searching
scoreboard players reset #safari_room_table Search
execute if score #safari_room_table Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/safari_room/search/boo_check/table
scoreboard players operation #temp Searching = #safari_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 743 30 -56 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching