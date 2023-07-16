tag @s[x=714.0,y=14,z=60.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=714.0,y=14,z=60.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=714.0,y=14,z=60.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/laundry_room/search/boo_check/shelf_2