tag @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cold_storage/search/campfire_1