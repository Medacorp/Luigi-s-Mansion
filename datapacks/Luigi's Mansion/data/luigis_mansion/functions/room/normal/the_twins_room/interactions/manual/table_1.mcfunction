tag @s[x=738.0,y=20,z=47.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=738.0,y=20,z=47.0,dx=0,dy=0,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=738.0,y=20,z=47.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_twins_room/search/table_1