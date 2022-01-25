tag @s[x=640.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=640.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=640.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/rec_room/search/swords_1