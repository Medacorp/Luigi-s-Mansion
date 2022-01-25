tag @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/crate_3