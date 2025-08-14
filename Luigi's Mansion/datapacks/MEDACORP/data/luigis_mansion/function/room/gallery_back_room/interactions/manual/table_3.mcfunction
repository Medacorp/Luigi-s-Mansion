tag @s[x=6.0,y=2,z=62.0,dx=1,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=6.0,y=2,z=62.0,dx=1,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=6.0,y=2,z=62.0,dx=1,dy=3,dz=0,tag=!sound,tag=!check] run scoreboard players operation #gallery_back_room_table_3 SearcherID = #temp ID
execute if entity @s[x=6.0,y=2,z=62.0,dx=1,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/gallery_back_room/search/table_3