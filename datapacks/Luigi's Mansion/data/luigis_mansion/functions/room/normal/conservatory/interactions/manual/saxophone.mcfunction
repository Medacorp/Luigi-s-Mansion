tag @s[x=658.0,y=11,z=-4.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=658.0,y=11,z=-4.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.saxophone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=658.0,y=11,z=-4.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/saxophone