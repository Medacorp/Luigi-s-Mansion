tag @s[x=647.0,y=102,z=35.0,dx=2,dy=5,dz=2,tag=check] add can_interact
execute if entity @s[x=647.0,y=102,z=35.0,dx=2,dy=5,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=647.0,y=102,z=35.0,dx=2,dy=5,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/courtyard/search/statue_2