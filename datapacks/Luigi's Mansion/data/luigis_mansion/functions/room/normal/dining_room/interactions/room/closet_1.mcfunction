execute unless score #dining_room_closet_1 Search matches 1 run scoreboard players reset #dining_room_closet_1 Searching
scoreboard players reset #dining_room_closet_1 Search
execute if score #dining_room_closet_1 Searching matches 20 run function luigis_mansion:room/normal/dining_room/search/boo_check/closet_1
scoreboard players operation #temp Searching = #dining_room_closet_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 12 52 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching