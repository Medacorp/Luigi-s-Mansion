tag @s[x=694.0,y=111,z=-24.0,dx=3,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=111,z=-24.0,dx=3,dy=2,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=694.0,y=111,z=-24.0,dx=3,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/master_bedroom/search/table_2