tag @s[x=741.0,y=20,z=46.0,dx=1,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=741.0,y=20,z=46.0,dx=1,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=741.0,y=20,z=46.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sitting_room/search/table_2