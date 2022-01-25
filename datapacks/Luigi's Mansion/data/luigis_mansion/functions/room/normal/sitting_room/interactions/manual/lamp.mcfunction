tag @s[x=741.5,y=26,z=-28.5,distance=..1,tag=check] add can_interact
execute if entity @s[x=741.5,y=26,z=-28.5,distance=..1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=741.5,y=26,z=-28.5,distance=..1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sitting_room/search/lamp