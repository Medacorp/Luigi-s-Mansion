execute unless score #guest_room_painting_5 Search matches 1 run scoreboard players reset #guest_room_painting_5 Searching
scoreboard players reset #guest_room_painting_5 Search
execute if block 713 112 -31 minecraft:redstone_lamp if score #guest_room_painting_5 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_painting_5_flipped
execute unless block 713 112 -31 minecraft:redstone_lamp if score #guest_room_painting_5 Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_painting_5