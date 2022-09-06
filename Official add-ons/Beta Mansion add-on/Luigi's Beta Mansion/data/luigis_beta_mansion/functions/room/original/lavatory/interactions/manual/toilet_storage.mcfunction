tag @s[x=663.0,y=11,z=45.0,dx=2,dy=4,dz=1,tag=check] add can_interact
execute if entity @s[x=663.0,y=11,z=45.0,dx=2,dy=4,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=663.0,y=11,z=45.0,dx=2,dy=4,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/lavatory/search/toilet_storage