execute unless score #hidden_room_painting_3 Search matches 1 run scoreboard players reset #hidden_room_painting_3 Searching
scoreboard players reset #hidden_room_painting_3 Search
execute if score #hidden_room_painting_3 Searching matches 20 run function 3ds_remake:room/hidden/hidden_room/search/boo_check/painting_3
scoreboard players operation #temp Searching = #hidden_room_painting_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 14 40 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching