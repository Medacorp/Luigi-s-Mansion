tag @s[x=737.0,y=77,z=-21.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=737.0,y=77,z=-21.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=737.0,y=77,z=-21.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run scoreboard players operation #gallery_table_1 SearcherID = #temp ID
execute if entity @s[x=737.0,y=77,z=-21.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/table_1