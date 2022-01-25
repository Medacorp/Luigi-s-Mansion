tag @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nursery/search/painting_2