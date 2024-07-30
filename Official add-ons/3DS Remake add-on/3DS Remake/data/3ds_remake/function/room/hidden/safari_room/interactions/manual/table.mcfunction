tag @s[x=743.0,y=29,z=-56.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=743.0,y=29,z=-56.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=743.0,y=29,z=-56.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #safari_room_table SearcherID = #temp ID
execute if entity @s[x=743.0,y=29,z=-56.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/safari_room/search/boo_check/table