tag @s[x=697.5,y=11,z=-55.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=697.5,y=11,z=-55.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=697.5,y=11,z=-55.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #ball_room_chair_5 SearcherID = #temp ID
execute if entity @s[x=697.5,y=11,z=-55.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/ball_room/search/boo_check/chair_5