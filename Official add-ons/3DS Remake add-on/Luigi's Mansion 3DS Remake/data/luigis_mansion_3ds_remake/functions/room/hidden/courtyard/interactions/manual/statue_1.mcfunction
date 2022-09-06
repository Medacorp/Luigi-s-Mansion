tag @s[x=647.0,y=102,z=24.0,dx=2,dy=5,dz=2,tag=check] add can_interact
execute if entity @s[x=647.0,y=102,z=24.0,dx=2,dy=5,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=647.0,y=102,z=24.0,dx=2,dy=5,dz=2,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/courtyard/search/statue_1