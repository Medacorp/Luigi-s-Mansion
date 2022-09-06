tag @s[x=644.5,y=95,z=-24.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=644.5,y=95,z=-24.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=644.5,y=95,z=-24.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/secret_altar/search/candle_6