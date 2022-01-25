tag @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=704.0,y=11,z=89.0,dx=2,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/kitchen/search/table