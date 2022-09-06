execute unless score #dining_room_chair_7 Search matches 1 run scoreboard players reset #dining_room_chair_7 Searching
scoreboard players reset #dining_room_chair_7 Search
execute if score #dining_room_chair_7 Searching matches 20 run function luigis_beta_mansion:room/original/dining_room/search/chair_7
scoreboard players operation #temp Searching = #dining_room_chair_7 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 706 11 37 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching