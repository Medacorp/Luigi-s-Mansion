tag @s[x=711.5,y=29,z=-51.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=711.5,y=29,z=-51.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.ceramic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=711.5,y=29,z=-51.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ceramics_studio/search/jar_6