tag @s[x=746.0,y=11,z=76.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=746.0,y=11,z=76.0,dx=0,dy=3,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=746.0,y=11,z=76.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/mirror_room/search/torch