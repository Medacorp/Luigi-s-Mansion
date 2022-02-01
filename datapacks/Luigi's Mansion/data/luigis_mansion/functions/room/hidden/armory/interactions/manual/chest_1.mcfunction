tag @s[x=749.0,y=29,z=-59.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=749.0,y=29,z=-59.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=749.0,y=29,z=-59.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/armory/search/chest_1