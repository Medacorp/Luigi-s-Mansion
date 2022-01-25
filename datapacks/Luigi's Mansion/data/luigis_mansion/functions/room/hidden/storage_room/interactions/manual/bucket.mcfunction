tag @s[x=681.5,y=11,z=70.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=681.5,y=11,z=70.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=681.5,y=11,z=70.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/storage_room/search/bucket