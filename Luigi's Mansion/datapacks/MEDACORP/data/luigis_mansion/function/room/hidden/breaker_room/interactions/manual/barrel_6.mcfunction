tag @s[x=690.0,y=2,z=75.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=690.0,y=2,z=75.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=690.0,y=2,z=75.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #breaker_room_barrel_6 SearcherID = #temp ID
execute if entity @s[x=690.0,y=2,z=75.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/breaker_room/search/boo_check/barrel_6