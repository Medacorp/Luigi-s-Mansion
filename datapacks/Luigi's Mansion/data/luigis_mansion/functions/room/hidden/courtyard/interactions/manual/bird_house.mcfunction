tag @s[x=647.0,y=102,z=27.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=647.0,y=102,z=27.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=647.0,y=102,z=27.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/courtyard/search/bird_house