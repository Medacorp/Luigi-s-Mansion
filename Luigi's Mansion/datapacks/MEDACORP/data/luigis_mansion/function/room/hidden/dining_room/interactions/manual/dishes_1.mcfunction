tag @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=!sound,tag=!check] run scoreboard players operation #dining_room_dishes_1 SearcherID = #temp ID
execute if entity @s[x=703.0,y=12,z=-38.0,dx=2,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/boo_check/dishes_1