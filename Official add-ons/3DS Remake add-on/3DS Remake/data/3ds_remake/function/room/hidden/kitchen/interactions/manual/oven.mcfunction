tag @s[x=699.0,y=11,z=73.0,dx=1,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=73.0,dx=1,dy=1,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/oven
execute if entity @s[x=699.0,y=11,z=73.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run scoreboard players operation #kitchen_oven SearcherID = #temp ID
execute if entity @s[x=699.0,y=11,z=73.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/kitchen/search/oven