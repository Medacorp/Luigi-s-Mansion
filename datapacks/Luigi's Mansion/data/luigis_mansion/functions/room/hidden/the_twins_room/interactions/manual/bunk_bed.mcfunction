tag @s[x=738.0,y=20,z=-21.0,dx=2,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=738.0,y=20,z=-21.0,dx=2,dy=3,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.0,y=20,z=-21.0,dx=2,dy=3,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_twins_room/search/bunk_bed