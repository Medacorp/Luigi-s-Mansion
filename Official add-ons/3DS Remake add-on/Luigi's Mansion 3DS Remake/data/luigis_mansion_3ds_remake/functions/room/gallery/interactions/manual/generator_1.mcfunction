tag @s[x=775.0,y=2,z=-21.0,dx=0,dy=4,dz=3,tag=check] add can_interact
execute if entity @s[x=775.0,y=2,z=-21.0,dx=0,dy=4,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=775.0,y=2,z=-21.0,dx=0,dy=4,dz=3,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/gallery/search/generator_1