tag @s[x=714.5,y=11,z=61.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=714.5,y=11,z=61.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=714.5,y=11,z=61.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/laundry_room/search/boo_check/bucket