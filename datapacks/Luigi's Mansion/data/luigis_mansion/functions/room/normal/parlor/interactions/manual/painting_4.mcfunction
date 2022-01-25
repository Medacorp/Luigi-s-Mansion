tag @s[x=713.0,y=21,z=27.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=713.0,y=21,z=27.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=713.0,y=21,z=27.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/parlor/search/painting_5