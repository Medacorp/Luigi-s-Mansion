tag @s[x=682.0,y=12,z=-68.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=682.0,y=12,z=-68.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=682.0,y=12,z=-68.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #storage_room_crate_7 SearcherID = #temp ID
execute if entity @s[x=682.0,y=12,z=-68.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/storage_room/search/boo_check/crate_7