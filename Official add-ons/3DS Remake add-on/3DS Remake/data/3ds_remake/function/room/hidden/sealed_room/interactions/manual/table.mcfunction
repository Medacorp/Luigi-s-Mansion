tag @s[x=704.0,y=20,z=-74.0,dx=1,dy=0,dz=13,tag=check] add can_interact
execute if entity @s[x=704.0,y=20,z=-74.0,dx=1,dy=0,dz=13,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=704.0,y=20,z=-74.0,dx=1,dy=0,dz=13,tag=!sound,tag=!check] run scoreboard players operation #sealed_room_table SearcherID = #temp ID
execute if entity @s[x=704.0,y=20,z=-74.0,dx=1,dy=0,dz=13,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/sealed_room/search/table