tag @s[x=641.5,y=20,z=-77.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=641.5,y=20,z=-77.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=641.5,y=20,z=-77.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/observatory/search/chair