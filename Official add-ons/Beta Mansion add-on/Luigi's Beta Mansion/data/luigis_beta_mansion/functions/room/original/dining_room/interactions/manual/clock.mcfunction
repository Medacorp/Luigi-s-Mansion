tag @s[x=699.0,y=11,z=30.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=30.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=699.0,y=11,z=30.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/dining_room/search/clock