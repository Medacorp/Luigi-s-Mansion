tag @s[x=685.5,y=12,z=38.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=685.5,y=12,z=38.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=685.5,y=12,z=38.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/projection_room/search/boo_check/projector