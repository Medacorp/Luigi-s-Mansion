execute unless score #guest_room_vacuumable Search matches 1 run scoreboard players reset #guest_room_vacuumable Searching
scoreboard players reset #guest_room_vacuumable Search
execute if block 742 21 -52 minecraft:redstone_lamp if score #guest_room_vacuumable Searching matches 40 run function 3ds_remake:room/hidden/guest_room/search/vacuumable_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if score #guest_room_vacuumable Searching matches 40 run function 3ds_remake:room/hidden/guest_room/search/vacuumable