tag @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=check] add can_interact
execute if entity @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/master_bedroom/search/bed