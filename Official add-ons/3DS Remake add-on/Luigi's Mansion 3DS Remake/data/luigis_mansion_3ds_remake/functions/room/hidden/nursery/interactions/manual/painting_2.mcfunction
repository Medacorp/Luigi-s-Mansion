tag @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=743.5,y=23,z=54.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/nursery/search/boo_check/painting_2