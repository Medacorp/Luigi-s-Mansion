tag @s[x=655.0,y=11,z=-7.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=655.0,y=11,z=-7.0,dx=1,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/harp
execute if entity @s[x=655.0,y=11,z=-7.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/conservatory/search/boo_check/harp