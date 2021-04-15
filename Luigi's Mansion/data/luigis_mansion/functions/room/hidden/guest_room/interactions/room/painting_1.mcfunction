execute unless score #guest_room_painting_1 Search matches 1 run scoreboard players reset #guest_room_painting_1 Searching
scoreboard players reset #guest_room_painting_1 Search
execute if block 713 112 46 minecraft:redstone_lamp if score #guest_room_painting_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_painting_1_flipped
execute unless block 713 112 46 minecraft:redstone_lamp if score #guest_room_painting_1 Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search_painting_1