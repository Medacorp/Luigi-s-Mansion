tag @s[x=737.0,y=21,z=41.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=737.0,y=21,z=41.0,dx=0,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=737.0,y=21,z=41.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_twins_room/search/darting_board