execute unless score #dining_room_torch_2 Search matches 1 run scoreboard players reset #dining_room_torch_2 Searching
scoreboard players reset #dining_room_torch_2 Search
execute if score #dining_room_torch_2 Searching matches 20 run function luigis_mansion:room/normal/dining_room/search/boo_check/torch_2
scoreboard players operation #temp Searching = #dining_room_torch_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 11 30 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching