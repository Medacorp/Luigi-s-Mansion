tag @s[x=704.0,y=12,z=-31.0,dx=1,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=704.0,y=12,z=-31.0,dx=1,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=704.0,y=12,z=-31.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #dining_room_dishes_4 SearcherID = #temp ID
execute if entity @s[x=704.0,y=12,z=-31.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/boo_check/dishes_4