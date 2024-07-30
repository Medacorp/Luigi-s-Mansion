tag @s[x=642.0,y=20,z=-56.0,dx=2,dy=0,dz=8,tag=check] add can_interact
execute if entity @s[x=642.0,y=20,z=-56.0,dx=2,dy=0,dz=8,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=642.0,y=20,z=-56.0,dx=2,dy=0,dz=8,tag=!sound,tag=!check] run scoreboard players operation #tea_room_table_2 SearcherID = #temp ID
execute if entity @s[x=642.0,y=20,z=-56.0,dx=2,dy=0,dz=8,tag=!sound,tag=!check] run function luigis_mansion:room/normal/tea_room/search/boo_check/table_2