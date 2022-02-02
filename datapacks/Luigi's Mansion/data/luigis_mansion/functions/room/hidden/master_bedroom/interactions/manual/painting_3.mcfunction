tag @s[x=698.5,y=113,z=-28.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=698.5,y=113,z=-28.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=698.5,y=113,z=-28.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/master_bedroom/search/boo_check/painting_3