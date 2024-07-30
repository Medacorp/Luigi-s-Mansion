tag @s[x=699.0,y=11,z=-71.0,dx=1,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=-71.0,dx=1,dy=1,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=699.0,y=11,z=-71.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run scoreboard players operation #kitchen_dish_washer SearcherID = #temp ID
execute if entity @s[x=699.0,y=11,z=-71.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/kitchen/search/boo_check/dish_washer