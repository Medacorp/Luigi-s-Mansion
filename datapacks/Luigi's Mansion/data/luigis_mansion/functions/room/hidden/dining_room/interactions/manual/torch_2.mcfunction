tag @s[x=699.0,y=11,z=-15.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=-15.0,dx=0,dy=3,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=699.0,y=11,z=-15.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/torch_2