tag @s[x=745.5,y=23,z=54.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=745.5,y=23,z=54.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=745.5,y=23,z=54.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #nursery_painting_3 SearcherID = #temp ID
execute if entity @s[x=745.5,y=23,z=54.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nursery/search/boo_check/painting_3