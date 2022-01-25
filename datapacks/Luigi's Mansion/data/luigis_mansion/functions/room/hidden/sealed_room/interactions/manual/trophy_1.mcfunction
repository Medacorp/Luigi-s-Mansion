tag @s[x=696.5,y=22,z=73.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=696.5,y=22,z=73.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.ceramic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=696.5,y=22,z=73.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/trophy_1