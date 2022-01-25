tag @s[x=742.0,y=4,z=-54.0,dx=0,dy=1,dz=4,tag=check] add can_interact
execute if entity @s[x=742.0,y=4,z=-54.0,dx=0,dy=1,dz=4,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=742.0,y=4,z=-54.0,dx=0,dy=1,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/cellar/search/shelf_2