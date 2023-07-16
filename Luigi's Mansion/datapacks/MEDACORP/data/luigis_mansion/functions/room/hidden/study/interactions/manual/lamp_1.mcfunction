tag @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/boo_check/lamp_1