tag @s[x=687.0,y=13,z=70.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=687.0,y=13,z=70.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=687.0,y=13,z=70.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/billiards_room/search/painting_5