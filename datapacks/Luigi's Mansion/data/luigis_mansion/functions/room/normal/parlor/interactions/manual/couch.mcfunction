tag @s[x=719.0,y=20,z=19.0,dx=3,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=719.0,y=20,z=19.0,dx=3,dy=0,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=719.0,y=20,z=19.0,dx=3,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/parlor/search/couch