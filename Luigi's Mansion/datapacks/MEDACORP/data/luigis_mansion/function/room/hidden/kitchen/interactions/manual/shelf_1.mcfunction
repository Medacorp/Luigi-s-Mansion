tag @s[x=699.0,y=15,z=-74.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=699.0,y=15,z=-74.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=699.0,y=15,z=-74.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #kitchen_shelf_1 SearcherID = #temp ID
execute if entity @s[x=699.0,y=15,z=-74.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/kitchen/search/boo_check/shelf_1