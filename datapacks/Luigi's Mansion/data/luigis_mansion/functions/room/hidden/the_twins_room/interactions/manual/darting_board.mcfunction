tag @s[x=737.0,y=21,z=-27.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=737.0,y=21,z=-27.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=737.0,y=21,z=-27.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_twins_room/search/darting_board