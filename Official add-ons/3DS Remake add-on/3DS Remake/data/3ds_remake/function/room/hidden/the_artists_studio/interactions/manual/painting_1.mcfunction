tag @s[x=695.0,y=29,z=-59.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=695.0,y=29,z=-59.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=695.0,y=29,z=-59.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #the_artists_studio_painting_1 SearcherID = #temp ID
execute if entity @s[x=695.0,y=29,z=-59.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/the_artists_studio/search/boo_check/painting_1