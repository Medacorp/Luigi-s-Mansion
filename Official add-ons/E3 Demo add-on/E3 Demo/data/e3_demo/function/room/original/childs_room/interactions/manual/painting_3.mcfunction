tag @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #childs_room_painting_3 SearcherID = #temp ID
execute if entity @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/childs_room/search/painting_3