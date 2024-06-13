execute unless score #nanas_room_closet Search matches 1 run scoreboard players reset #nanas_room_closet Searching
scoreboard players reset #nanas_room_closet Search
execute if score #nanas_room_closet Searching matches 20 run function 3ds_remake:room/hidden/nanas_room/search/boo_check/closet
scoreboard players operation #temp Searching = #nanas_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 661 20 -27 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching