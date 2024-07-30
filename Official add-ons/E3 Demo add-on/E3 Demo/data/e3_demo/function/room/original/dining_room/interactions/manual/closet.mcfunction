tag @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run scoreboard players operation #dining_room_closet SearcherID = #temp ID
execute if entity @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run function e3_demo:room/original/dining_room/search/closet