tag @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=669.0,y=20,z=95.0,dx=0,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/astral_hall/search/candle_2