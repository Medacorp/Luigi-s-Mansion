tag @s[x=681.0,y=11,z=-63.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=681.0,y=11,z=-63.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=681.0,y=11,z=-63.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #storage_room_chairs SearcherID = #temp ID
execute if entity @s[x=681.0,y=11,z=-63.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/storage_room/search/boo_check/chairs