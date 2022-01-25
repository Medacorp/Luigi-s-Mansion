tag @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/washroom_2/search/radiator