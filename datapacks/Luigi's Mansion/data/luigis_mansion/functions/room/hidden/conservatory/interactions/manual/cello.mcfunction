tag @s[x=660.0,y=11,z=24.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=660.0,y=11,z=24.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.cello block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=660.0,y=11,z=24.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/conservatory/search/cello