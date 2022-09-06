execute unless score #dining_room_table Search matches 1 run scoreboard players reset #dining_room_table Searching
scoreboard players reset #dining_room_table Search
execute if score #dining_room_table Searching matches 20 run function luigis_beta_mansion:room/original/dining_room/search/table
scoreboard players operation #temp Searching = #dining_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 704 11 43 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching