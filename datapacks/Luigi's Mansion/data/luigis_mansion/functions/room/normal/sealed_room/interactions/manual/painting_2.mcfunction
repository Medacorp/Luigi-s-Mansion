tag @s[x=709.0,y=22,z=-64.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=709.0,y=22,z=-64.0,dx=0,dy=0,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=709.0,y=22,z=-64.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sealed_room/search/painting_2