tag @s[x=14.0,y=2,z=56.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=14.0,y=2,z=56.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=14.0,y=2,z=56.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #gallery_back_room_table_1 SearcherID = #temp ID
execute if entity @s[x=14.0,y=2,z=56.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/gallery_back_room/search/table_1