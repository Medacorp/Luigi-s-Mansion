tag @s[x=643.5,y=21,z=-47.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=643.5,y=21,z=-47.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=643.5,y=21,z=-47.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/tea_room/search/ice_bucket