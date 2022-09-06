tag @s[x=743.5,y=14,z=49.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=743.5,y=14,z=49.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=743.5,y=14,z=49.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/hidden_room/search/boo_check/painting_1