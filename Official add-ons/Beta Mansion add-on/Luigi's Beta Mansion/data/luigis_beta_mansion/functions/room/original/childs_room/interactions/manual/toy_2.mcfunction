tag @s[x=745.5,y=21,z=55.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=745.5,y=21,z=55.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=745.5,y=21,z=55.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/childs_room/search/toy_2