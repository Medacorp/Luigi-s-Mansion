execute unless score #dining_room_dishes_6 Search matches 1 run scoreboard players reset #dining_room_dishes_6 Searching
scoreboard players reset #dining_room_dishes_6 Search
execute if score #dining_room_dishes_6 Searching matches 20 run function luigis_mansion:room/hidden/dining_room/search/dishes_6
scoreboard players operation #temp Searching = #dining_room_dishes_6 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 705.0 12 -22.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching