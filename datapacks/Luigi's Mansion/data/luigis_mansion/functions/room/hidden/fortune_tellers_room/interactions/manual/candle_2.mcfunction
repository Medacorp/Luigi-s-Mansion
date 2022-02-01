tag @s[x=746.0,y=11,z=52.0,dx=0,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=746.0,y=11,z=52.0,dx=0,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=746.0,y=11,z=52.0,dx=0,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/fortune_tellers_room/search/candle_2