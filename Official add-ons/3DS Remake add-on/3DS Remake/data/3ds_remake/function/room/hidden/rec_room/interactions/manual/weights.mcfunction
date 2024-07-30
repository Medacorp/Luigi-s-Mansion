tag @s[x=639.0,y=11,z=-37.0,dx=1,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=639.0,y=11,z=-37.0,dx=1,dy=3,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=639.0,y=11,z=-37.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run scoreboard players operation #rec_room_weights SearcherID = #temp ID
execute if entity @s[x=639.0,y=11,z=-37.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/rec_room/search/boo_check/weights