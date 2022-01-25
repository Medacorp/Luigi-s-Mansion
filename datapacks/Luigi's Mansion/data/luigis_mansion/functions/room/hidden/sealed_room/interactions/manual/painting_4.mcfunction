tag @s[x=694.0,y=22,z=89.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=22,z=89.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=694.0,y=22,z=89.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/painting_4