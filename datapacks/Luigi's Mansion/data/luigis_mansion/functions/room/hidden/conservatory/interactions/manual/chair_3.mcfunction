tag @s[x=660.5,y=11,z=39.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=660.5,y=11,z=39.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=660.5,y=11,z=39.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/conservatory/search/chair_3