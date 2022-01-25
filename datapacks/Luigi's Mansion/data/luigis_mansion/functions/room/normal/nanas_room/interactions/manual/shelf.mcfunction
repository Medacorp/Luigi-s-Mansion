tag @s[x=654.0,y=24,z=-17.0,dx=0,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=654.0,y=24,z=-17.0,dx=0,dy=0,dz=4,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=654.0,y=24,z=-17.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nanas_room/search/shelf