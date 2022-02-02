execute unless score #butlers_room_chair_3 Search matches 1 run scoreboard players reset #butlers_room_chair_3 Searching
scoreboard players reset #butlers_room_chair_3 Search
execute if score #butlers_room_chair_3 Searching matches 20 run function luigis_mansion:room/normal/butlers_room/search/boo_check/chair_3
scoreboard players operation #temp Searching = #butlers_room_chair_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742 11 63 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching