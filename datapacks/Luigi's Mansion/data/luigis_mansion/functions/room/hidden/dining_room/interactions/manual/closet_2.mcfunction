tag @s[x=699.0,y=11,z=-21.0,dx=1,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=-21.0,dx=1,dy=3,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=699.0,y=11,z=-21.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/closet_2