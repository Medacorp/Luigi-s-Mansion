tag @s[x=703.0,y=131,z=16.0,dx=2,dy=3,dz=2,tag=check] add can_interact
execute if entity @s[x=703.0,y=131,z=16.0,dx=2,dy=3,dz=2,tag=check] run scoreboard players set @a[tag=searcher,limit=1] InteractionType 3
execute if entity @s[x=703.0,y=131,z=16.0,dx=2,dy=3,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=703.0,y=131,z=16.0,dx=2,dy=3,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/roof/search/pillar_8