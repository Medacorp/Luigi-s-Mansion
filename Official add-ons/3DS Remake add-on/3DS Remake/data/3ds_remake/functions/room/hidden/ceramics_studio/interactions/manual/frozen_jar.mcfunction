tag @s[x=707.0,y=29,z=61.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=707.0,y=29,z=61.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=707.0,y=29,z=61.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/ceramics_studio/search/boo_check/frozen_jar