tag @s[x=655.0,y=11,z=22.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=655.0,y=11,z=22.0,dx=1,dy=2,dz=1,tag=sound] run playsound luigis_mansion:block.search.harp block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=655.0,y=11,z=22.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/conservatory/search/harp