tag @s[x=746.0,y=11,z=-28.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=746.0,y=11,z=-28.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=746.0,y=11,z=-28.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hidden_room/search/boo_check/chest_3