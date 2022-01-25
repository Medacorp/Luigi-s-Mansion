tag @s[x=700.0,y=29,z=90.0,dx=2,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=700.0,y=29,z=90.0,dx=2,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.concrete block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=700.0,y=29,z=90.0,dx=2,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/painting_9