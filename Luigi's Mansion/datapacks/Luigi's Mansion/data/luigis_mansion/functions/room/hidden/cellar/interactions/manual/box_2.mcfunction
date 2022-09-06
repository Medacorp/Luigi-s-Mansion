tag @s[x=736.0,y=2,z=72.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=2,z=72.0,dx=1,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=2,z=72.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cellar/search/boo_check/box_2