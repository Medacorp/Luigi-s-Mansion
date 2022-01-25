tag @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/table