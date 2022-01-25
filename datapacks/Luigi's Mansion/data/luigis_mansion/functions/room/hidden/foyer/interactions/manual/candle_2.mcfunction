tag @s[x=751.0,y=11,z=1.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=751.0,y=11,z=1.0,dx=0,dy=3,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=751.0,y=11,z=1.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/foyer/search/candle_2