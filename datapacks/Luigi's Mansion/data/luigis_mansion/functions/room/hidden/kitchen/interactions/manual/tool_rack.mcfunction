tag @s[x=698.0,y=14,z=-71.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=698.0,y=14,z=-71.0,dx=0,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=698.0,y=14,z=-71.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/kitchen/search/tool_rack