tag @s[tag=!dead,tag=!remove_from_existence] remove dark_room
execute if entity @s[tag=!dead,tag=!remove_from_existence] run function #luigis_mansion:room/dark_room

execute if entity @s[tag=was_dark_room,tag=!dark_room] run function luigis_mansion:entities/furniture/search/room_clear_loot_dropper
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/room_clear_loot_dropper
execute if entity @s[tag=drop_loot] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000

tag @s[tag=dark_room] add was_dark_room
tag @s[tag=!dark_room] remove was_dark_room