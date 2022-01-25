tag @s[x=706.0,y=11,z=48.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=706.0,y=11,z=48.0,dx=0,dy=0,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=706.0,y=11,z=48.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/dining_room/search/dishes_2