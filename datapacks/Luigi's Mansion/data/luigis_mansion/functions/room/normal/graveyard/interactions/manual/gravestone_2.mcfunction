tag @s[x=658.0,y=102,z=49.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=658.0,y=102,z=49.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=658.0,y=102,z=49.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/graveyard/search/gravestone_2