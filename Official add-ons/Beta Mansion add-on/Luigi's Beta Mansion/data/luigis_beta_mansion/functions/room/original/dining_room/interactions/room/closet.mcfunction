execute unless score #dining_room_closet Search matches 1 run scoreboard players reset #dining_room_closet Searching
scoreboard players reset #dining_room_closet Search
execute if score #dining_room_closet Searching matches 20 run function luigis_beta_mansion:room/original/dining_room/search/closet
scoreboard players operation #temp Searching = #dining_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 699 12 43 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching