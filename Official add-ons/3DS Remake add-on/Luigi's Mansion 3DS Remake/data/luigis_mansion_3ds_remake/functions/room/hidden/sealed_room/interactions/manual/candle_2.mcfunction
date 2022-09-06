tag @s[x=695.5,y=24,z=-64.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=695.5,y=24,z=-64.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=695.5,y=24,z=-64.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/sealed_room/search/candle_2