tag @s[x=656.0,y=20,z=31.0,dx=1,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=656.0,y=20,z=31.0,dx=1,dy=0,dz=5,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=656.0,y=20,z=31.0,dx=1,dy=0,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/nanas_room/search/couch