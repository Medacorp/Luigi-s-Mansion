tag @s[x=690.0,y=2,z=-45.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=690.0,y=2,z=-45.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=690.0,y=2,z=-45.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/breaker_room/search/barrel_2