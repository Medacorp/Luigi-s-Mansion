tag @s[x=675.0,y=12,z=-27.0,dx=0,dy=3,dz=8,tag=check] add can_interact
execute if entity @s[x=675.0,y=12,z=-27.0,dx=0,dy=3,dz=8,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=675.0,y=12,z=-27.0,dx=0,dy=3,dz=8,tag=!sound,tag=!check] run scoreboard players operation #projection_room_screen SearcherID = #temp ID
execute if entity @s[x=675.0,y=12,z=-27.0,dx=0,dy=3,dz=8,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/projection_room/search/boo_check/screen