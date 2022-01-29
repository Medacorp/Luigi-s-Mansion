tag @s[x=701.0,y=12,z=53.0,dx=1,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=701.0,y=12,z=53.0,dx=1,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=701.0,y=12,z=53.0,dx=1,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ball_room/search/painting_1