execute unless score #billiards_room_billiards_table Search matches 1 run scoreboard players reset #billiards_room_billiards_table Searching
scoreboard players reset #billiards_room_billiards_table Search
execute if score #billiards_room_billiards_table Searching matches 20 run function 3ds_remake:room/hidden/billiards_room/search/boo_check/billiards_table
scoreboard players operation #temp Searching = #billiards_room_billiards_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 681.0 12 78.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching