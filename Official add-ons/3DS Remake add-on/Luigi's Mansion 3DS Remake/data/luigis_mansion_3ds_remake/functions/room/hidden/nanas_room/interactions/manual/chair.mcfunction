tag @s[x=658.0,y=20,z=-23.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=658.0,y=20,z=-23.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=658.0,y=20,z=-23.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/nanas_room/search/boo_check/chair