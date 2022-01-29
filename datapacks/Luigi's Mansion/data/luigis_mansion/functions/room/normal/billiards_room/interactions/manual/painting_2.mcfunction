tag @s[x=683.0,y=13,z=89.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=683.0,y=13,z=89.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=683.0,y=13,z=89.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/billiards_room/search/painting_2