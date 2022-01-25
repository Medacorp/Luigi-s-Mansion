tag @s[x=734.0,y=30,z=57.0,dx=0,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=734.0,y=30,z=57.0,dx=0,dy=0,dz=4,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=734.0,y=30,z=57.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/safari_room/search/shelf_2