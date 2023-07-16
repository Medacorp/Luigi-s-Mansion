tag @s[x=648.0,y=104,z=46.0,dx=1,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=648.0,y=104,z=46.0,dx=1,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=648.0,y=104,z=46.0,dx=1,dy=1,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/graveyard/search/gravestone_4