tag @s[x=690.0,y=29,z=-74.0,dx=1,dy=2,dz=4,tag=check] add can_interact
execute if entity @s[x=690.0,y=29,z=-74.0,dx=1,dy=2,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=690.0,y=29,z=-74.0,dx=1,dy=2,dz=4,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/the_artists_studio/search/boo_check/table_2