tag @s[x=720.5,y=21,z=23.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=720.5,y=21,z=23.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=720.5,y=21,z=23.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/parlor/search/boo_check/candle_3