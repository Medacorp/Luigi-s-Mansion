tag @s[x=664.0,y=11,z=44.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=664.0,y=11,z=44.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=664.0,y=11,z=44.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/washroom_1/search/toilet