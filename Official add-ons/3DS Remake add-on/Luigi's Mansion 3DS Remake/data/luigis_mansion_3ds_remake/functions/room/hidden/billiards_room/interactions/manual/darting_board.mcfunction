tag @s[x=674.0,y=12,z=82.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=674.0,y=12,z=82.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=674.0,y=12,z=82.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/billiards_room/search/boo_check/darting_board