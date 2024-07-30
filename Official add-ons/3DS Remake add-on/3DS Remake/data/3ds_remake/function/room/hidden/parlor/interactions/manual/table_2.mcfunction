tag @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=check] add can_interact
execute if entity @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=!sound,tag=!check] run scoreboard players operation #parlor_table_2 SearcherID = #temp ID
execute if entity @s[x=714.0,y=20,z=25.0,dx=1,dy=0,dz=5,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/parlor/search/boo_check/table_2