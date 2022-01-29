tag @s[x=692.5,y=114,z=-22.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=692.5,y=114,z=-22.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=692.5,y=114,z=-22.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/master_bedroom/search/painting_4