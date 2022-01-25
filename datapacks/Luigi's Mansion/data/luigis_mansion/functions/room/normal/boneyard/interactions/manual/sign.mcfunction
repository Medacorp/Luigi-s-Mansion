tag @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/boneyard/search/sign