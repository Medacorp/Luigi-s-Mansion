tag @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=check] add can_interact
execute if entity @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=669.0,y=103,z=39.0,dx=0,dy=10,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/graveyard/search/rain_pipe