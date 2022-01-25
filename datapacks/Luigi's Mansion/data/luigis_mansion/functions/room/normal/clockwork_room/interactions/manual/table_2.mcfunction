tag @s[x=693.0,y=120,z=17.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=693.0,y=120,z=17.0,dx=1,dy=1,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=693.0,y=120,z=17.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/clockwork_room/search/table_2