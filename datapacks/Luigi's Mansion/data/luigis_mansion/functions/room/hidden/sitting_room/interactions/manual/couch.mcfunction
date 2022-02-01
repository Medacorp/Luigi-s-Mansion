tag @s[x=738.0,y=20,z=43.0,dx=0,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=738.0,y=20,z=43.0,dx=0,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=738.0,y=20,z=43.0,dx=0,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sitting_room/search/couch