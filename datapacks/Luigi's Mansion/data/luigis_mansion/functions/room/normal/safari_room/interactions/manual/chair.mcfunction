tag @s[x=740.5,y=29,z=-55.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=740.5,y=29,z=-55.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=740.5,y=29,z=-55.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/safari_room/search/chair