tag @s[x=694.0,y=23,z=92.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=23,z=92.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=694.0,y=23,z=92.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #sealed_room_painting_6 SearcherID = #temp ID
execute if entity @s[x=694.0,y=23,z=92.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/painting_6