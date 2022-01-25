tag @s[x=688.0,y=29,z=-64.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=688.0,y=29,z=-64.0,dx=0,dy=2,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=688.0,y=29,z=-64.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_artists_studio/search/painting_3