tag @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/pipe_room/search/frozen_barrel