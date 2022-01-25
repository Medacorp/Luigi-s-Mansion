tag @s[x=741.0,y=20,z=66.0,dx=1,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=741.0,y=20,z=66.0,dx=1,dy=1,dz=3,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=741.0,y=20,z=66.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nursery/search/crib