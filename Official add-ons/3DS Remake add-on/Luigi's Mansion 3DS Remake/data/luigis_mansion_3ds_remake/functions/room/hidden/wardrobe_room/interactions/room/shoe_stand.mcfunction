execute unless score #wardrobe_room_shoe_stand Search matches 1 run scoreboard players reset #wardrobe_room_shoe_stand Searching
scoreboard players reset #wardrobe_room_shoe_stand Search
execute if score #wardrobe_room_shoe_stand Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/wardrobe_room/search/boo_check/shoe_stand
scoreboard players operation #temp Searching = #wardrobe_room_shoe_stand Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 685 20 57 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching