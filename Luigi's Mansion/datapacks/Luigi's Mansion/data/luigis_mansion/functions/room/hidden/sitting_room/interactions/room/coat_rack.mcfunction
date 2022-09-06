execute unless score #sitting_room_coat_rack Search matches 1 run scoreboard players reset #sitting_room_coat_rack Searching
scoreboard players reset #sitting_room_coat_rack Search
execute if score #sitting_room_coat_rack Searching matches 20 run function luigis_mansion:room/hidden/sitting_room/search/boo_check/coat_rack
scoreboard players operation #temp Searching = #sitting_room_coat_rack Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 736 20 52 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching