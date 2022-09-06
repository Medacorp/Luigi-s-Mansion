tag @s[x=736.0,y=2,z=-24.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=2,z=-24.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=2,z=-24.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/gallery/search/chest