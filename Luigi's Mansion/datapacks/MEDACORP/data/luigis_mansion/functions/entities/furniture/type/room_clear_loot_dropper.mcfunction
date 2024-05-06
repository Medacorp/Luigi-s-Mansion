execute if entity @s[tag=!dead,tag=!remove_from_existence] run function luigis_mansion:room/dark_room

execute if entity @s[tag=was_dark_room] unless entity @s[tag=dark_room,tag=!drop_loot] run function luigis_mansion:entities/furniture/search/room_clear_loot_dropper