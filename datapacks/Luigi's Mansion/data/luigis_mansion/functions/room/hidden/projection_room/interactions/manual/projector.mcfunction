tag @s[x=685.0,y=11,z=-24.0,dx=1,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=685.0,y=11,z=-24.0,dx=1,dy=1,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=685.0,y=11,z=-24.0,dx=1,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/projection_room/search/projector