tag @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/bathroom_1/search/shelf