tag @s[x=699.0,y=14,z=74.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=699.0,y=14,z=74.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=699.0,y=14,z=74.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #kitchen_shelf_4 SearcherID = #temp ID
execute if entity @s[x=699.0,y=14,z=74.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function e3_demo:room/original/kitchen/search/shelf_4