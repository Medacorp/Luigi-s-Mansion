execute unless score #rec_room_swords_2 Search matches 1 run scoreboard players reset #rec_room_swords_2 Searching
scoreboard players reset #rec_room_swords_2 Search
execute if score #rec_room_swords_2 Searching matches 20 run function 3ds_remake:room/hidden/rec_room/search/boo_check/swords_2
scoreboard players operation #temp Searching = #rec_room_swords_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 645 14 -31 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching