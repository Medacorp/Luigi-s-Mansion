tag @s[x=662.0,y=20,z=103.0,dx=1,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=662.0,y=20,z=103.0,dx=1,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=662.0,y=20,z=103.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/astral_hall/search/table_2