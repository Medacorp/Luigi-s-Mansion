tag @s[x=742.5,y=20,z=46.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=742.5,y=20,z=46.5,distance=..0.7,tag=check] run scoreboard players set @a[tag=searcher,limit=1] InteractionType 3
execute if entity @s[x=742.5,y=20,z=46.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_twins_room/search/box_1