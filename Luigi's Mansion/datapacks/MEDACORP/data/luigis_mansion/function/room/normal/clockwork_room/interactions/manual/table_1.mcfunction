tag @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #clockwork_room_table_1 SearcherID = #temp ID
execute if entity @s[x=684.0,y=120,z=21.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/clockwork_room/search/boo_check/table_1