tag @s[x=693.5,y=120,z=-3.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=693.5,y=120,z=-3.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=693.5,y=120,z=-3.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/clockwork_room/search/boo_check/chair_1