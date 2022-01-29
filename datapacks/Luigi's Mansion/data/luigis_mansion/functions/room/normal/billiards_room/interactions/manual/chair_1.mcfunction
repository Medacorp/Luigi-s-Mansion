tag @s[x=685.5,y=11,z=68.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=685.5,y=11,z=68.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=685.5,y=11,z=68.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/billiards_room/search/chair_1