tag @s[x=692.0,y=29,z=89.0,dx=5,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=692.0,y=29,z=89.0,dx=5,dy=2,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=692.0,y=29,z=89.0,dx=5,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/table_3