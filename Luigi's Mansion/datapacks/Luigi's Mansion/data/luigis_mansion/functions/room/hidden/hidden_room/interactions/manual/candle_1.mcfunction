tag @s[x=739.5,y=13,z=-31.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=739.5,y=13,z=-31.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=739.5,y=13,z=-31.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hidden_room/search/boo_check/candle_1