tag @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=695.0,y=21,z=-78.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sealed_room/search/chest_5