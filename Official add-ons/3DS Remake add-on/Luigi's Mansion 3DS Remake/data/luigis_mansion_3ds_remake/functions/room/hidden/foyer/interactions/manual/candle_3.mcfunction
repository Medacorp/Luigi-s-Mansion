tag @s[x=751.0,y=11,z=3.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=751.0,y=11,z=3.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=751.0,y=11,z=3.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/foyer/search/candle_3