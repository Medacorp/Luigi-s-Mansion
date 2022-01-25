tag @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=715.0,y=20,z=-46.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/lamp_1