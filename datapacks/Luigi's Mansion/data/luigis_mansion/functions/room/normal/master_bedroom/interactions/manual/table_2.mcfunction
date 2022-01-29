tag @s[x=694.0,y=111,z=38.0,dx=3,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=111,z=38.0,dx=3,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=694.0,y=111,z=38.0,dx=3,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/master_bedroom/search/table_2