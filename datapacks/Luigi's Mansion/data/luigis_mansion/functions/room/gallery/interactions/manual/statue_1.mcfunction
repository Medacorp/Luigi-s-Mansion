tag @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=check] add can_interact
execute if entity @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/statue_1