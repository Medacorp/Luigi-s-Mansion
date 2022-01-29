tag @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/washroom_1/search/toilet_paper