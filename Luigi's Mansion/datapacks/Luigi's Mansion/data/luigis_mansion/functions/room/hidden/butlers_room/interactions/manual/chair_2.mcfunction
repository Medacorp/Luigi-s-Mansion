tag @s[x=745.5,y=11,z=-50.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=745.5,y=11,z=-50.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=745.5,y=11,z=-50.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/butlers_room/search/boo_check/chair_2