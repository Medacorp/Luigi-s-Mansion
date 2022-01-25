tag @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/butlers_room/search/sewing_machine