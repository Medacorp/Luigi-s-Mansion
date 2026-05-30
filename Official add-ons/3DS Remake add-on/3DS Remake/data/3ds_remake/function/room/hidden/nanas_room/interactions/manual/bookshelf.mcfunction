tag @s[x=654.0,y=20,z=-16.0,dx=0,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=654.0,y=20,z=-16.0,dx=0,dy=0,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=654.0,y=20,z=-16.0,dx=0,dy=0,dz=2,tag=!sound,tag=!check] run scoreboard players operation #nanas_room_bookshelf SearcherID = #temp ID
execute if entity @s[x=654.0,y=20,z=-16.0,dx=0,dy=0,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/nanas_room/search/bookshelf