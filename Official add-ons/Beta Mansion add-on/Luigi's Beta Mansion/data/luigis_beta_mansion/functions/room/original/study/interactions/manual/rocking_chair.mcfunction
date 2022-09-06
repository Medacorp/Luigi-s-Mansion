tag @s[x=708.0,y=20,z=56.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=708.0,y=20,z=56.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=708.0,y=20,z=56.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/study/search/rocking_chair