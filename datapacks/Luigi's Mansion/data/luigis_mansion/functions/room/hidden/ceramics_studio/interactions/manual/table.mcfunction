tag @s[x=698.0,y=29,z=-54.0,dx=0,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=698.0,y=29,z=-54.0,dx=0,dy=0,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=698.0,y=29,z=-54.0,dx=0,dy=0,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ceramics_studio/search/table