tag @s[x=703.0,y=11,z=36.0,dx=2,dy=0,dz=14,tag=check] add can_interact
execute if entity @s[x=703.0,y=11,z=36.0,dx=2,dy=0,dz=14,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=703.0,y=11,z=36.0,dx=2,dy=0,dz=14,tag=!sound,tag=!check] run scoreboard players operation #dining_room_table SearcherID = #temp ID
execute if entity @s[x=703.0,y=11,z=36.0,dx=2,dy=0,dz=14,tag=!sound,tag=!check] run function e3_demo:room/original/dining_room/search/table