tag @s[x=660.0,y=11,z=-10.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=660.0,y=11,z=-10.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/cello
execute if entity @s[x=660.0,y=11,z=-10.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/boo_check/cello