tag @s[x=642.0,y=20,z=63.0,dx=2,dy=0,dz=8,tag=check] add can_interact
execute if entity @s[x=642.0,y=20,z=63.0,dx=2,dy=0,dz=8,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=642.0,y=20,z=63.0,dx=2,dy=0,dz=8,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/table_2