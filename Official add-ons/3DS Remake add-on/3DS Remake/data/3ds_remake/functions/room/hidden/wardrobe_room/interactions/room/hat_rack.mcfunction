execute unless score #wardrobe_room_hat_rack Search matches 1 run scoreboard players reset #wardrobe_room_hat_rack Searching
scoreboard players reset #wardrobe_room_hat_rack Search
execute if score #wardrobe_room_hat_rack Searching matches 20 run function 3ds_remake:room/hidden/wardrobe_room/search/boo_check/hat_rack
scoreboard players operation #temp Searching = #wardrobe_room_hat_rack Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 680 20 57 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching