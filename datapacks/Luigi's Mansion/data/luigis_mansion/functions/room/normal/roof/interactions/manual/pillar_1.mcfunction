tag @s[x=691.0,y=131,z=40.0,dx=2,dy=3,dz=2,tag=check] add can_interact
execute if entity @s[x=691.0,y=131,z=40.0,dx=2,dy=3,dz=2,tag=check] run scoreboard players set @a[tag=searcher,limit=1] InteractionType 3
execute if entity @s[x=691.0,y=131,z=40.0,dx=2,dy=3,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=691.0,y=131,z=40.0,dx=2,dy=3,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/roof/search/pillar_1