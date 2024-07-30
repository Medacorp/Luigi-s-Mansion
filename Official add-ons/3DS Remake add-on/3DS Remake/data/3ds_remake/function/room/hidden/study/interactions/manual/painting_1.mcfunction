tag @s[x=707.5,y=22,z=62.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=707.5,y=22,z=62.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=707.5,y=22,z=62.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #study_painting_1 SearcherID = #temp ID
execute if entity @s[x=707.5,y=22,z=62.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/study/search/boo_check/painting_1