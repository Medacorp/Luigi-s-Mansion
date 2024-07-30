tag @s[x=734.0,y=30,z=-46.0,dx=0,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=734.0,y=30,z=-46.0,dx=0,dy=0,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=734.0,y=30,z=-46.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run scoreboard players operation #safari_room_shelf_2 SearcherID = #temp ID
execute if entity @s[x=734.0,y=30,z=-46.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/safari_room/search/boo_check/shelf_2