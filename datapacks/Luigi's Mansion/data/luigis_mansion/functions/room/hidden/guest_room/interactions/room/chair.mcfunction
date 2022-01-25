execute unless score #guest_room_chair Search matches 1 run scoreboard players reset #guest_room_chair Searching
scoreboard players reset #guest_room_chair Search
execute if block 741 21 68 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/chair_flipped
execute unless block 741 21 68 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/chair