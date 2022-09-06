tag @s[x=747.0,y=22,z=-34.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=747.0,y=22,z=-34.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=747.0,y=22,z=-34.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/sitting_room/search/boo_check/painting_5