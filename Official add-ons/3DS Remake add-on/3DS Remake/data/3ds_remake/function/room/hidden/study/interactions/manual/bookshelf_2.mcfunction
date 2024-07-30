tag @s[x=702.0,y=20,z=57.0,dx=0,dy=6,dz=1,tag=check] add can_interact
execute if entity @s[x=702.0,y=20,z=57.0,dx=0,dy=6,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=702.0,y=20,z=57.0,dx=0,dy=6,dz=1,tag=!sound,tag=!check] run scoreboard players operation #study_bookshelf_2 SearcherID = #temp ID
execute if entity @s[x=702.0,y=20,z=57.0,dx=0,dy=6,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/study/search/bookshelf_2