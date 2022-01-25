tag @s[x=739.0,y=11,z=-30.0,dx=0,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=739.0,y=11,z=-30.0,dx=0,dy=0,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=739.0,y=11,z=-30.0,dx=0,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/fortune_tellers_room/search/chair