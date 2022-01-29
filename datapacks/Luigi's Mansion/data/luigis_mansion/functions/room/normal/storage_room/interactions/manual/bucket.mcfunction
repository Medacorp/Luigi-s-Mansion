tag @s[x=681.5,y=11,z=-54.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=681.5,y=11,z=-54.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=681.5,y=11,z=-54.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/storage_room/search/bucket