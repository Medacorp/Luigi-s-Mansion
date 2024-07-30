tag @s[x=698.0,y=29,z=-77.0,dx=2,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=698.0,y=29,z=-77.0,dx=2,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/concrete
execute if entity @s[x=698.0,y=29,z=-77.0,dx=2,dy=0,dz=3,tag=!sound,tag=!check] run scoreboard players operation #the_artists_studio_bricks SearcherID = #temp ID
execute if entity @s[x=698.0,y=29,z=-77.0,dx=2,dy=0,dz=3,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/the_artists_studio/search/boo_check/bricks