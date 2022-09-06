execute unless score #telephone_room_shelf_2 Search matches 1 run scoreboard players reset #telephone_room_shelf_2 Searching
scoreboard players reset #telephone_room_shelf_2 Search
execute if score #telephone_room_shelf_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/telephone_room/search/boo_check/shelf_2
scoreboard players operation #temp Searching = #telephone_room_shelf_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 32 23 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching