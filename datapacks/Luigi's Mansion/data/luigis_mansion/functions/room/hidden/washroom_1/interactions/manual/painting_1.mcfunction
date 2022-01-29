tag @s[x=661.5,y=13,z=-26.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=13,z=-26.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=661.5,y=13,z=-26.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/washroom_1/search/painting_1