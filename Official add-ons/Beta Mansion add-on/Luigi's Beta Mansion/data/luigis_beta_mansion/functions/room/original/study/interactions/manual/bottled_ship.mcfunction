tag @s[x=702.5,y=24,z=54.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=24,z=54.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=702.5,y=24,z=54.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/study/search/bottled_ship