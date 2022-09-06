tag @s[x=751.0,y=11,z=14.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=751.0,y=11,z=14.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=751.0,y=11,z=14.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/entrance/search/candle_2