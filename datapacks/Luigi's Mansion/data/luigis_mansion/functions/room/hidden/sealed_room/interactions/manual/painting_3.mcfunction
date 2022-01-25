tag @s[x=694.5,y=23,z=87.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=694.5,y=23,z=87.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=694.5,y=23,z=87.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/painting_3