execute unless score #hidden_room_painting_4 Search matches 1 run scoreboard players reset #hidden_room_painting_4 Searching
scoreboard players reset #hidden_room_painting_4 Search
execute if score #hidden_room_painting_4 Searching matches 20 run function luigis_mansion:room/normal/hidden_room/search/boo_check/painting_4
scoreboard players operation #temp Searching = #hidden_room_painting_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 14 37 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching