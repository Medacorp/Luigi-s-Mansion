tag @s[x=740.0,y=11,z=-61.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=740.0,y=11,z=-61.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=740.0,y=11,z=-61.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/mirror_room/search/table