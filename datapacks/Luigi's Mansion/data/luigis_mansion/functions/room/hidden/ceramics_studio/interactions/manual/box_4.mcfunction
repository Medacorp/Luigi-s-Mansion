tag @s[x=698.5,y=30,z=-49.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=698.5,y=30,z=-49.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=698.5,y=30,z=-49.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ceramics_studio/search/box_4