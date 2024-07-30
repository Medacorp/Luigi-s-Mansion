tag @s[x=640.0,y=20,z=-31.0,dx=6,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=640.0,y=20,z=-31.0,dx=6,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=640.0,y=20,z=-31.0,dx=6,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #tea_room_drawer_1 SearcherID = #temp ID
execute if entity @s[x=640.0,y=20,z=-31.0,dx=6,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/tea_room/search/boo_check/drawer_1