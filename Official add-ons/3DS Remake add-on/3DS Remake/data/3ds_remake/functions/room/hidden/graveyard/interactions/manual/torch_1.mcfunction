tag @s[x=652.0,y=102,z=52.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=652.0,y=102,z=52.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=652.0,y=102,z=52.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/graveyard/search/torch_1