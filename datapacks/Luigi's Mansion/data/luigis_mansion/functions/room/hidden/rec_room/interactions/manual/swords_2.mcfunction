tag @s[x=644.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=644.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=644.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/rec_room/search/sword_2