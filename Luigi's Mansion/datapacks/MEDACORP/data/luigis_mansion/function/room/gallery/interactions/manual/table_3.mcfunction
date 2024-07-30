tag @s[x=729.0,y=77,z=-34.0,dx=0,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=729.0,y=77,z=-34.0,dx=0,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=729.0,y=77,z=-34.0,dx=0,dy=3,dz=1,tag=!sound,tag=!check] run scoreboard players operation #gallery_table_3 SearcherID = #temp ID
execute if entity @s[x=729.0,y=77,z=-34.0,dx=0,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/table_3