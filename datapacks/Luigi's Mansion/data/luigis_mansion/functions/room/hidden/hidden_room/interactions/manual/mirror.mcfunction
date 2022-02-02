tag @s[x=749.0,y=11,z=-26.0,dx=0,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=749.0,y=11,z=-26.0,dx=0,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=749.0,y=11,z=-26.0,dx=0,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hidden_room/search/boo_check/mirror