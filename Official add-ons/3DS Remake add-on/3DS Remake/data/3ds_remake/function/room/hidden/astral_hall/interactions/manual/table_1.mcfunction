tag @s[x=662.0,y=20,z=-76.0,dx=1,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=662.0,y=20,z=-76.0,dx=1,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=662.0,y=20,z=-76.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #astral_hall_table_1 SearcherID = #temp ID
execute if entity @s[x=662.0,y=20,z=-76.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/astral_hall/search/boo_check/table_1