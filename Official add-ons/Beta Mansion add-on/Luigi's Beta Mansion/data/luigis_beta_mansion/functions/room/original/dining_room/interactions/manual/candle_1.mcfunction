tag @s[x=704.0,y=12,z=47.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=704.0,y=12,z=47.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=704.0,y=12,z=47.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/dining_room/search/candle_1