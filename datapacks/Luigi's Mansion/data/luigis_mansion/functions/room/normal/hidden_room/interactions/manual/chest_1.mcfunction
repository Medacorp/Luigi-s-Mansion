tag @s[x=743.0,y=11,z=46.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=743.0,y=11,z=46.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=743.0,y=11,z=46.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/hidden_room/search/boo_check/chest_1