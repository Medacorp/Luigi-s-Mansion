tag @s[x=702.5,y=24,z=-38.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=24,z=-38.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=702.5,y=24,z=-38.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/bottled_ship