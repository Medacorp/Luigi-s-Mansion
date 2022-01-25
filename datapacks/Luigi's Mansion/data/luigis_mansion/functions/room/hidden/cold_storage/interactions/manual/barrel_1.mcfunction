tag @s[x=725.0,y=2,z=18.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=725.0,y=2,z=18.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=725.0,y=2,z=18.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cold_storage/search/barrel_1