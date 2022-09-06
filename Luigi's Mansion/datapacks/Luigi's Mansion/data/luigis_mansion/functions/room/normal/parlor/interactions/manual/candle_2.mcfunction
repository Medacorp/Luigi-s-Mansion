tag @s[x=714.0,y=21,z=26.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=714.0,y=21,z=26.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=714.0,y=21,z=26.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/parlor/search/boo_check/candle_2