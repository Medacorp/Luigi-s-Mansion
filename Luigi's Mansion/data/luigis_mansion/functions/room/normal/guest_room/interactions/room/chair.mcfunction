execute unless score #guest_room_chair Search matches 1 run scoreboard players reset #guest_room_chair Searching
scoreboard players reset #guest_room_chair Search
execute if block 713 112 -31 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_chair_flipped
execute unless block 713 112 -31 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_chair