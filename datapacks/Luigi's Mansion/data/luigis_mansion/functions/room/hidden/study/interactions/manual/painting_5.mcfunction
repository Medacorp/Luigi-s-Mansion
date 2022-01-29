tag @s[x=712.5,y=22,z=-27.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=712.5,y=22,z=-27.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=712.5,y=22,z=-27.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/painting_5