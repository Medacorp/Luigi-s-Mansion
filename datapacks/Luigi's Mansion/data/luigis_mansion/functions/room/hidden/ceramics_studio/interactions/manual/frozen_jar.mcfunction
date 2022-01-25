tag @s[x=707.0,y=29,z=-46.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=707.0,y=29,z=-46.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=707.0,y=29,z=-46.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ceramics_studio/search/frozen_jar