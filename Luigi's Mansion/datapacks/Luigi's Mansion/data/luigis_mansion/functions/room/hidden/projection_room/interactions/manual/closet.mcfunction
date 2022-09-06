tag @s[x=682.0,y=11,z=-18.0,dx=3,dy=4,dz=1,tag=check] add can_interact
execute if entity @s[x=682.0,y=11,z=-18.0,dx=3,dy=4,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=682.0,y=11,z=-18.0,dx=3,dy=4,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/projection_room/search/boo_check/closet