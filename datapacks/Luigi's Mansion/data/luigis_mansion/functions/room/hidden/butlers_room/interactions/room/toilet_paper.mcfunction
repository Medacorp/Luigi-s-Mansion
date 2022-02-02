execute unless score #butlers_room_toilet_paper Search matches 1 run scoreboard players reset #butlers_room_toilet_paper Searching
scoreboard players reset #butlers_room_toilet_paper Search
execute if score #butlers_room_toilet_paper Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search/boo_check/toilet_paper
scoreboard players operation #temp Searching = #butlers_room_toilet_paper Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 745.0 11 -40.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching