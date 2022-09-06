tag @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=681.0,y=102,z=39.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/back_yard/search/water_tap