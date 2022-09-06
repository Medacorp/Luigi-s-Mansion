tag @s[x=679.0,y=11,z=-65.0,dx=4,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=679.0,y=11,z=-65.0,dx=4,dy=0,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=679.0,y=11,z=-65.0,dx=4,dy=0,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/billiards_room/search/boo_check/billiards_table