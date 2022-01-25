tag @s[x=740.0,y=31,z=33.0,dx=2,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=740.0,y=31,z=33.0,dx=2,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=740.0,y=31,z=33.0,dx=2,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/telephone_room/search/shelf_1