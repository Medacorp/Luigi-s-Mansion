execute unless score #butlers_room_chair_1 Search matches 1 run scoreboard players reset #butlers_room_chair_1 Searching
scoreboard players reset #butlers_room_chair_1 Search
execute if score #butlers_room_chair_1 Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search/boo_check/chair_1
scoreboard players operation #temp Searching = #butlers_room_chair_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 749 11 -53.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching