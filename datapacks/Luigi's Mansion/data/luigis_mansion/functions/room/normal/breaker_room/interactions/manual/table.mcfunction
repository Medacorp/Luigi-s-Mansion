tag @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/breaker_room/search/table