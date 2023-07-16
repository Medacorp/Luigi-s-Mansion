tag @s[x=675.0,y=12,z=34.0,dx=0,dy=3,dz=8,tag=check] add can_interact
execute if entity @s[x=675.0,y=12,z=34.0,dx=0,dy=3,dz=8,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=675.0,y=12,z=34.0,dx=0,dy=3,dz=8,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/projection_room/search/boo_check/screen