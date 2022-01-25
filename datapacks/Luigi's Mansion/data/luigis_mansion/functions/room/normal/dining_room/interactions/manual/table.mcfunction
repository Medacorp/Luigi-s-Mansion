tag @s[x=703.0,y=11,z=33.0,dx=2,dy=0,dz=20,tag=check] add can_interact
execute if entity @s[x=703.0,y=11,z=33.0,dx=2,dy=0,dz=20,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=703.0,y=11,z=33.0,dx=2,dy=0,dz=20,tag=!sound,tag=!check] run function luigis_mansion:room/normal/dining_room/search/table