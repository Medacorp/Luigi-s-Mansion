tag @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/pipe_room/search/bucket