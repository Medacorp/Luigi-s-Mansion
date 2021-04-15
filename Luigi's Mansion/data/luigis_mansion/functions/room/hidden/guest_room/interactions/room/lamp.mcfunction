execute unless score #guest_room_lamp Search matches 1 run scoreboard players reset #guest_room_lamp Searching
scoreboard players reset #guest_room_lamp Search
execute if block 713 112 46 minecraft:redstone_lamp if score #guest_room_lamp Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_lamp_flipped
execute unless block 713 112 46 minecraft:redstone_lamp if score #guest_room_lamp Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_lamp