execute unless score #dining_room_dishes_5 Search matches 1 run scoreboard players reset #dining_room_dishes_5 Searching
scoreboard players reset #dining_room_dishes_5 Search
execute if score #dining_room_dishes_5 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/dining_room/search/boo_check/dishes_5
scoreboard players operation #temp Searching = #dining_room_dishes_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 703 12 40 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching