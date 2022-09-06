tag @s[x=685.0,y=11,z=37.0,dx=1,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=685.0,y=11,z=37.0,dx=1,dy=0,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=685.0,y=11,z=37.0,dx=1,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/projection_room/search/boo_check/table