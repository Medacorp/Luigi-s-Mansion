execute unless score #rec_room_swords_1 Search matches 1 run scoreboard players reset #rec_room_swords_1 Searching
scoreboard players reset #rec_room_swords_1 Search
execute if score #rec_room_swords_1 Searching matches 20 run function luigis_mansion:room/hidden/rec_room/search/boo_check/swords_1
scoreboard players operation #temp Searching = #rec_room_swords_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 641 14 46 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching