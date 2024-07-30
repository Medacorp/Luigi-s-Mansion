tag @s[x=710.5,y=14,z=52.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=14,z=52.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=710.5,y=14,z=52.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #dining_room_painting_1 SearcherID = #temp ID
execute if entity @s[x=710.5,y=14,z=52.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/dining_room/search/boo_check/painting_1