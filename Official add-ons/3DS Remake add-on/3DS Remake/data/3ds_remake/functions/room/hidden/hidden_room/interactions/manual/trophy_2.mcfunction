tag @s[x=746.5,y=13,z=32.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=746.5,y=13,z=32.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=746.5,y=13,z=32.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/hidden_room/search/boo_check/trophy_2