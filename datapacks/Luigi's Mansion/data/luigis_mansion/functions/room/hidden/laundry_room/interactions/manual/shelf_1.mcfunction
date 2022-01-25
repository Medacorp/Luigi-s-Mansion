tag @s[x=714.0,y=14,z=-59.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=714.0,y=14,z=-59.0,dx=0,dy=1,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=714.0,y=14,z=-59.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/laundry_room/search/shelf_1