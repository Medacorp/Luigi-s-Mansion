tag @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/living_room/search/table_2