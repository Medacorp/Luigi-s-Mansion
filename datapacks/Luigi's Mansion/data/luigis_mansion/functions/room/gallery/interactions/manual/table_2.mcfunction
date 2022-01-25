tag @s[x=729.0,y=77,z=-24.0,dx=0,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=729.0,y=77,z=-24.0,dx=0,dy=3,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=729.0,y=77,z=-24.0,dx=0,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/table_2