tag @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #breaker_room_table SearcherID = #temp ID
execute if entity @s[x=694.0,y=2,z=-45.0,dx=2,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/breaker_room/search/boo_check/table