tag @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/clockwork_room/search/table_4