tag @s[x=720.0,y=20,z=32.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=720.0,y=20,z=32.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=720.0,y=20,z=32.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/living_room/search/table_1