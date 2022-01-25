tag @s[x=698.0,y=29,z=64.0,dx=0,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=698.0,y=29,z=64.0,dx=0,dy=0,dz=5,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=698.0,y=29,z=64.0,dx=0,dy=0,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/normal/ceramics_studio/search/table