tag @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/dishes_1