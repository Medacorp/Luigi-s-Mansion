tag @s[x=736.0,y=2,z=-56.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=2,z=-56.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=736.0,y=2,z=-56.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/cellar/search/barrel_2