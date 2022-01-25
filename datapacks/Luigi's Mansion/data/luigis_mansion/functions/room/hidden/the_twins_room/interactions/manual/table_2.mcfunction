tag @s[x=745.0,y=20,z=-33.0,dx=3,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=745.0,y=20,z=-33.0,dx=3,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=745.0,y=20,z=-33.0,dx=3,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_twins_room/search/table_2