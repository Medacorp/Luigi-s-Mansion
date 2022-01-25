tag @s[x=644.0,y=102,z=41.0,dx=2,dy=7,dz=2,tag=check] add can_interact
execute if entity @s[x=644.0,y=102,z=41.0,dx=2,dy=7,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=644.0,y=102,z=41.0,dx=2,dy=7,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/courtyard/search/lamp_2