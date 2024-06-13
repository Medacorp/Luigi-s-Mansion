tag @s[x=666.0,y=102,z=43.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=666.0,y=102,z=43.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=666.0,y=102,z=43.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/graveyard/search/gravestone_6