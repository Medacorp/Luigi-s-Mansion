tag @s[x=744.0,y=11,z=-56.0,dx=2,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=744.0,y=11,z=-56.0,dx=2,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=744.0,y=11,z=-56.0,dx=2,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/butlers_room/search/ironing_table