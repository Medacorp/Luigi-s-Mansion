tag @s[x=661.5,y=23,z=45.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=23,z=45.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=661.5,y=23,z=45.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/washroom_2/search/boo_check/painting_1