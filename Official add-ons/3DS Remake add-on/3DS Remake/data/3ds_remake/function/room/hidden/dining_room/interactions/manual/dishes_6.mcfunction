tag @s[x=704.0,y=12,z=37.0,dx=1,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=704.0,y=12,z=37.0,dx=1,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=704.0,y=12,z=37.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/dining_room/search/boo_check/dishes_6