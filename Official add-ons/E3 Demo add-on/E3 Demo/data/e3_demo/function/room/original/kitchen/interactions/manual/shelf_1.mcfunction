tag @s[x=699.0,y=15,z=88.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=699.0,y=15,z=88.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=699.0,y=15,z=88.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #kitchen_shelf_1 SearcherID = #temp ID
execute if entity @s[x=699.0,y=15,z=88.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function e3_demo:room/original/kitchen/search/shelf_1