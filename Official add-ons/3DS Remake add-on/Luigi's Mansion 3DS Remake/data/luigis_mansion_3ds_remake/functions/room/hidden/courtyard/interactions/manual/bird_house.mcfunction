tag @s[x=647.0,y=102,z=-12.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=647.0,y=102,z=-12.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=647.0,y=102,z=-12.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/courtyard/search/bird_house