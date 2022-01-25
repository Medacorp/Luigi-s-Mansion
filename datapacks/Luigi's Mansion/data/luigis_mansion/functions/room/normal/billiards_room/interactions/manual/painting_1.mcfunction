tag @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/billiards_room/search/painting_1