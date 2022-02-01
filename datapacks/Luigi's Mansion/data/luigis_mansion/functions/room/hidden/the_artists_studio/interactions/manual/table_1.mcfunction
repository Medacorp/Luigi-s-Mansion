tag @s[x=690.0,y=29,z=78.0,dx=1,dy=2,dz=5,tag=check] add can_interact
execute if entity @s[x=690.0,y=29,z=78.0,dx=1,dy=2,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=690.0,y=29,z=78.0,dx=1,dy=2,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/table_1