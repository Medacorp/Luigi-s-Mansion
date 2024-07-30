tag @s[x=744.0,y=29,z=29.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=744.0,y=29,z=29.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=744.0,y=29,z=29.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #telephone_room_table SearcherID = #temp ID
execute if entity @s[x=744.0,y=29,z=29.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/telephone_room/search/boo_check/table