tag @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #kitchen_shelf_5 SearcherID = #temp ID
execute if entity @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/kitchen/search/boo_check/shelf_5