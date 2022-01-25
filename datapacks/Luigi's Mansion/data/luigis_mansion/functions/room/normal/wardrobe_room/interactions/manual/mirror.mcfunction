tag @s[x=677.0,y=20,z=60.0,dx=0,dy=4,dz=3,tag=check] add can_interact
execute if entity @s[x=677.0,y=20,z=60.0,dx=0,dy=4,dz=3,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=677.0,y=20,z=60.0,dx=0,dy=4,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/normal/wardrobe_room/search/mirror