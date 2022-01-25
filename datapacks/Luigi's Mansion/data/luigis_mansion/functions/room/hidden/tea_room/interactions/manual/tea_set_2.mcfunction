tag @s[x=642.0,y=21,z=68.0,dx=1,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=642.0,y=21,z=68.0,dx=1,dy=0,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=642.0,y=21,z=68.0,dx=1,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/tea_set_2