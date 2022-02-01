tag @s[x=710.5,y=14,z=-18.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=14,z=-18.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=710.5,y=14,z=-18.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/painting_4