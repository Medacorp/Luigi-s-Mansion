tag @s[x=650.0,y=93,z=-24.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=650.0,y=93,z=-24.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=650.0,y=93,z=-24.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/secret_altar/search/candle_5