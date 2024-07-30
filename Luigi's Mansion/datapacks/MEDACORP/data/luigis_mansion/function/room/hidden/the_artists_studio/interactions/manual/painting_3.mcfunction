tag @s[x=688.0,y=29,z=77.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=688.0,y=29,z=77.0,dx=0,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=688.0,y=29,z=77.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #the_artists_studio_painting_3 SearcherID = #temp ID
execute if entity @s[x=688.0,y=29,z=77.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/boo_check/painting_3