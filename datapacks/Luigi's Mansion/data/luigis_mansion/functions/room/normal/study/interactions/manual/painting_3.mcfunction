tag @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/study/search/painting_3