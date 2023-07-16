tag @s[x=737.5,y=14,z=40.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=737.5,y=14,z=40.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=737.5,y=14,z=40.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/hidden_room/search/boo_check/painting_3