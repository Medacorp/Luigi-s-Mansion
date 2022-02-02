tag @s[x=699.0,y=3,z=66.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=699.0,y=3,z=66.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=699.0,y=3,z=66.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/breaker_room/search/boo_check/mirror