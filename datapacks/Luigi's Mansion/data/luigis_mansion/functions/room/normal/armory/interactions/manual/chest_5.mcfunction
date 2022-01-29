tag @s[x=746.0,y=29,z=62.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=746.0,y=29,z=62.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=746.0,y=29,z=62.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/chest_5