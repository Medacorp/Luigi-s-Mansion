tag @s[x=654.0,y=24,z=32.0,dx=0,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=654.0,y=24,z=32.0,dx=0,dy=0,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=654.0,y=24,z=32.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run scoreboard players operation #nanas_room_shelf SearcherID = #temp ID
execute if entity @s[x=654.0,y=24,z=32.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/nanas_room/search/boo_check/shelf