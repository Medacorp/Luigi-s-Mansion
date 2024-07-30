tag @s[x=707.5,y=22,z=-46.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=707.5,y=22,z=-46.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=707.5,y=22,z=-46.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #study_painting_1 SearcherID = #temp ID
execute if entity @s[x=707.5,y=22,z=-46.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/boo_check/painting_1