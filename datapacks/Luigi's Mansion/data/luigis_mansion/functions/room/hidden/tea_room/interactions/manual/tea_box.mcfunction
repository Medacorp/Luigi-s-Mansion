tag @s[x=643.5,y=21,z=67.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=643.5,y=21,z=67.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=643.5,y=21,z=67.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/tea_box