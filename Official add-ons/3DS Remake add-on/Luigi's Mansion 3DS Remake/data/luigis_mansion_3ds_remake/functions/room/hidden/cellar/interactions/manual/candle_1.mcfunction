tag @s[x=745.5,y=5,z=-43.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=745.5,y=5,z=-43.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=745.5,y=5,z=-43.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/cellar/search/boo_check/candle_1