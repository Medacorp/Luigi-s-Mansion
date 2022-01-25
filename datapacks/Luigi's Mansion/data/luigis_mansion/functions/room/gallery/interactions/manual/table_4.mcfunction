tag @s[x=737.0,y=77,z=-36.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=737.0,y=77,z=-36.0,dx=1,dy=0,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=737.0,y=77,z=-36.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/table_4