tag @s[x=710.5,y=11,z=59.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=11,z=59.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=710.5,y=11,z=59.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #ball_room_chair_4 SearcherID = #temp ID
execute if entity @s[x=710.5,y=11,z=59.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/ball_room/search/boo_check/chair_4