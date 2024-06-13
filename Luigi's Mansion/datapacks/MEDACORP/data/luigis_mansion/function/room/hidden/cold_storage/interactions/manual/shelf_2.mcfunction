tag @s[x=723.0,y=4,z=11.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=723.0,y=4,z=11.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=723.0,y=4,z=11.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cold_storage/search/boo_check/shelf_2