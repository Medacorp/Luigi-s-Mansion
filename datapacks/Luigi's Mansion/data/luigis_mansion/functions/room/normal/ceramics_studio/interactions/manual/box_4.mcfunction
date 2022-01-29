tag @s[x=698.5,y=30,z=65.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=698.5,y=30,z=65.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=698.5,y=30,z=65.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/ceramics_studio/search/box_4