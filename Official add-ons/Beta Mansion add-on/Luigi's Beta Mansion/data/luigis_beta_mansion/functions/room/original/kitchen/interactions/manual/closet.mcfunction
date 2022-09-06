tag @s[x=699.0,y=11,z=63.0,dx=1,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=63.0,dx=1,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=699.0,y=11,z=63.0,dx=1,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/kitchen/search/closet