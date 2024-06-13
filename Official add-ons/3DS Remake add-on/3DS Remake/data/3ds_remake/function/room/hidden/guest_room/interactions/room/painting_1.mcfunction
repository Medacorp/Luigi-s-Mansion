execute unless score #guest_room_painting_1 Search matches 1 run scoreboard players reset #guest_room_painting_1 Searching
scoreboard players reset #guest_room_painting_1 Search
execute if block 742 21 -52 minecraft:redstone_lamp if score #guest_room_painting_1 Searching matches 20 run function 3ds_remake:room/hidden/guest_room/search/painting_1_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if score #guest_room_painting_1 Searching matches 20 run function 3ds_remake:room/hidden/guest_room/search/boo_check/painting_1
scoreboard players operation #temp Searching = #guest_room_painting_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 -52 minecraft:redstone_lamp positioned 746 25 -47.0 run function luigis_mansion:blocks/search_sound/generic
execute if score #temp Searching matches 1 unless block 742 21 -52 minecraft:redstone_lamp positioned 746 22 -47.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching