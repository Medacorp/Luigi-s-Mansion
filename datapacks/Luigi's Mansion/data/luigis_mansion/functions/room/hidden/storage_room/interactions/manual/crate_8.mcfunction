tag @s[x=681.0,y=13,z=82.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=681.0,y=13,z=82.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=681.0,y=13,z=82.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/storage_room/search/crate_8