tag @s[x=694.0,y=3,z=1.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=3,z=1.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=694.0,y=3,z=1.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #pipe_room_crate SearcherID = #temp ID
execute if entity @s[x=694.0,y=3,z=1.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/pipe_room/search/boo_check/crate