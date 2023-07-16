tag @s[x=747.0,y=21,z=31.0,dx=0,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=747.0,y=21,z=31.0,dx=0,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=747.0,y=21,z=31.0,dx=0,dy=0,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/the_twins_room/search/boo_check/toy_3