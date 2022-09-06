tag @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/astral_hall/search/boo_check/candle_2