execute unless score #butlers_room_chair_4 Search matches 1 run scoreboard players reset #butlers_room_chair_4 Searching
scoreboard players reset #butlers_room_chair_4 Search
execute if score #butlers_room_chair_4 Searching matches 20 run function luigis_mansion:room/normal/butlers_room/search/chair_4
scoreboard players operation #temp Searching = #butlers_room_chair_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 744 11 61 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching