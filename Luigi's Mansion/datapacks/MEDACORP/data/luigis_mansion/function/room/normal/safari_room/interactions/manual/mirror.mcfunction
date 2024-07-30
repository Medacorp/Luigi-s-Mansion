tag @s[x=745.0,y=30,z=-46.0,dx=0,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=745.0,y=30,z=-46.0,dx=0,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=745.0,y=30,z=-46.0,dx=0,dy=3,dz=3,tag=!sound,tag=!check] run scoreboard players operation #safari_room_mirror SearcherID = #temp ID
execute if entity @s[x=745.0,y=30,z=-46.0,dx=0,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/normal/safari_room/search/boo_check/mirror