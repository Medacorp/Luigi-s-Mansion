tag @s[x=691.0,y=2,z=59.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=691.0,y=2,z=59.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=691.0,y=2,z=59.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/breaker_room/search/barrel_1