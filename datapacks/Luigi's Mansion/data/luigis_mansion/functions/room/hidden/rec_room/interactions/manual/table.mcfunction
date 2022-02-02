tag @s[x=639.0,y=11,z=56.0,dx=0,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=639.0,y=11,z=56.0,dx=0,dy=1,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=639.0,y=11,z=56.0,dx=0,dy=1,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/rec_room/search/boo_check/table