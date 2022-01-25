tag @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=check] add can_interact
execute if entity @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=770.0,y=77,z=-26.0,dx=3,dy=6,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/statue_1