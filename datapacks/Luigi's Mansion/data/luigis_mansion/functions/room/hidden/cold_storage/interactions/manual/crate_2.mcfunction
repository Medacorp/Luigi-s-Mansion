tag @s[x=738.0,y=2,z=6.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=738.0,y=2,z=6.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.0,y=2,z=6.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cold_storage/search/crate_2