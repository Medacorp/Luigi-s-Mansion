tag @s[x=740.0,y=31,z=-18.0,dx=2,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=740.0,y=31,z=-18.0,dx=2,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=740.0,y=31,z=-18.0,dx=2,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/telephone_room/search/shelf_1