execute unless score #guest_room_bed Search matches 1 run scoreboard players reset #guest_room_bed Searching
scoreboard players reset #guest_room_bed Search
execute if block 713 112 -31 minecraft:redstone_lamp if score #guest_room_bed Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_bed_flipped
execute unless block 713 112 -31 minecraft:redstone_lamp if score #guest_room_bed Searching matches 20 run function luigis_mansion:room/normal/guest_room/search_bed