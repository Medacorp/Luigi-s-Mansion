tag @s[x=738.5,y=20,z=40.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=738.5,y=20,z=40.5,distance=..0.7,tag=check] run scoreboard players set @a[tag=searcher,limit=1] InteractionType 3
execute if entity @s[x=738.5,y=20,z=40.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/the_twins_room/search/box_3