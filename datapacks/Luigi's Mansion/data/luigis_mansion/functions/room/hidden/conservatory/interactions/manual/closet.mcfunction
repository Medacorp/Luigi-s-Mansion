tag @s[x=654.0,y=11,z=40.0,dx=1,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=654.0,y=11,z=40.0,dx=1,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=654.0,y=11,z=40.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/conservatory/search/boo_check/closet