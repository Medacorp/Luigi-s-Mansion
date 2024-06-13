tag @s[x=659.0,y=20,z=-12.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=659.0,y=20,z=-12.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=659.0,y=20,z=-12.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/nanas_room/search/boo_check/table_1