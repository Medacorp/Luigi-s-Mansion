tag @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/kitchen/search/table