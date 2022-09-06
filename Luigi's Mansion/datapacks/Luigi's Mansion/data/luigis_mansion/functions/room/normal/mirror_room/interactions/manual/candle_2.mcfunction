tag @s[x=736.0,y=11,z=-61.0,dx=0,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=736.0,y=11,z=-61.0,dx=0,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=736.0,y=11,z=-61.0,dx=0,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/mirror_room/search/boo_check/candle_2