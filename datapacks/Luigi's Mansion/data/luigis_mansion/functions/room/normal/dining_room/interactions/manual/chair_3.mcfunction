tag @s[x=702.5,y=11,z=37.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=11,z=37.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=702.5,y=11,z=37.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/dining_room/search/chair_3