tag @s[x=747.5,y=20,z=60.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=747.5,y=20,z=60.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=747.5,y=20,z=60.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #childs_room_chair_1 SearcherID = #temp ID
execute if entity @s[x=747.5,y=20,z=60.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/childs_room/search/chair_1