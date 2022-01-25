tag @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=697.0,y=3,z=7.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/pipe_room/search/frozen_barrel