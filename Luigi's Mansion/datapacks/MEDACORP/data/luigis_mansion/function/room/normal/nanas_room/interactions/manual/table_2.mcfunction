tag @s[x=658.0,y=20,z=-21.0,dx=1,dy=1,dz=5,tag=check] add can_interact
execute if entity @s[x=658.0,y=20,z=-21.0,dx=1,dy=1,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=658.0,y=20,z=-21.0,dx=1,dy=1,dz=5,tag=!sound,tag=!check] run scoreboard players operation #nanas_room_table_2 SearcherID = #temp ID
execute if entity @s[x=658.0,y=20,z=-21.0,dx=1,dy=1,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nanas_room/search/boo_check/table_2