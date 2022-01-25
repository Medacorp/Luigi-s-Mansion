tag @s[x=710.5,y=11,z=57.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=11,z=57.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=710.5,y=11,z=57.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ball_room/search/chair_2