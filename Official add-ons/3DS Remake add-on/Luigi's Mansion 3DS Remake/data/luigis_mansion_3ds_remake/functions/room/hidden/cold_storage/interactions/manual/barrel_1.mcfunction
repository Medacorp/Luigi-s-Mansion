tag @s[x=725.0,y=2,z=-3.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=725.0,y=2,z=-3.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=725.0,y=2,z=-3.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/cold_storage/search/boo_check/barrel_1