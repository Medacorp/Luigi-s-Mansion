tag @s[x=694.5,y=114,z=56.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=694.5,y=114,z=56.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=694.5,y=114,z=56.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #bed_room_1_painting_1 SearcherID = #temp ID
execute if entity @s[x=694.5,y=114,z=56.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/bed_room_1/search/painting_1