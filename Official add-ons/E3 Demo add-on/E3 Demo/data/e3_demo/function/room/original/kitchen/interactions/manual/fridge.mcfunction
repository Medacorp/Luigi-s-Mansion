tag @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/fridge
execute if entity @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=!sound,tag=!check] run scoreboard players operation #kitchen_fridge SearcherID = #temp ID
execute if entity @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=!sound,tag=!check] run function e3_demo:room/original/kitchen/search/fridge