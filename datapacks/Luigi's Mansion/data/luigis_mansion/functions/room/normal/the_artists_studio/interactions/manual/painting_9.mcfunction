tag @s[x=700.0,y=29,z=-75.0,dx=2,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=700.0,y=29,z=-75.0,dx=2,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/concrete
execute if entity @s[x=700.0,y=29,z=-75.0,dx=2,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_artists_studio/search/painting_9