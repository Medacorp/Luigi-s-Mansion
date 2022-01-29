tag @s[x=710.5,y=14,z=-63.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=14,z=-63.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=710.5,y=14,z=-63.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/kitchen/search/painting_2