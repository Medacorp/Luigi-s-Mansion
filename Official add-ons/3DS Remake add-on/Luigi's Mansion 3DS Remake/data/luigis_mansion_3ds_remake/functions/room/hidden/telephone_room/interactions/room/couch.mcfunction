execute unless score #telephone_room_couch Search matches 1 run scoreboard players reset #telephone_room_couch Searching
scoreboard players reset #telephone_room_couch Search
execute if score #telephone_room_couch Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/telephone_room/search/boo_check/couch
scoreboard players operation #temp Searching = #telephone_room_couch Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742 29 27 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching