tag @s[x=642.0,y=21,z=64.0,dx=1,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=642.0,y=21,z=64.0,dx=1,dy=0,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=642.0,y=21,z=64.0,dx=1,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/tea_set_1