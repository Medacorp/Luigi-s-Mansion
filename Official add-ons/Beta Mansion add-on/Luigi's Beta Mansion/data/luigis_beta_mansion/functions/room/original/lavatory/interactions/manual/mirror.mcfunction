tag @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=661.0,y=12,z=39.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/lavatory/search/mirror