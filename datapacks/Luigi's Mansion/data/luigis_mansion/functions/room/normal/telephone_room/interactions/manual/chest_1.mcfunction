tag @s[x=738.0,y=29,z=17.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=738.0,y=29,z=17.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=738.0,y=29,z=17.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/telephone_room/search/chest_1