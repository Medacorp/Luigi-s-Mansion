tag @s[x=666.0,y=120,z=-16.0,dx=4,dy=6,dz=8,tag=check] add can_interact
execute if entity @s[x=666.0,y=120,z=-16.0,dx=4,dy=6,dz=8,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=666.0,y=120,z=-16.0,dx=4,dy=6,dz=8,tag=!sound,tag=!check] run function luigis_mansion:room/normal/balcony_2/search/statue_2