execute unless score #wardrobe_room_painting_1 Search matches 1 run scoreboard players reset #wardrobe_room_painting_1 Searching
scoreboard players reset #wardrobe_room_painting_1 Search
execute if score #wardrobe_room_painting_1 Searching matches 20 run function luigis_mansion:room/normal/wardrobe_room/search/boo_check/painting_1
scoreboard players operation #temp Searching = #wardrobe_room_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 686 22 63 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching