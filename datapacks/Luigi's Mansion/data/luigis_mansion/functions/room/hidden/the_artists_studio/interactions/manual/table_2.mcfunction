tag @s[x=690.0,y=29,z=85.0,dx=1,dy=2,dz=4,tag=check] add can_interact
execute if entity @s[x=690.0,y=29,z=85.0,dx=1,dy=2,dz=4,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=690.0,y=29,z=85.0,dx=1,dy=2,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/table_2