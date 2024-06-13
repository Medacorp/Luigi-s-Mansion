tag @s[x=694.5,y=24,z=-62.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=694.5,y=24,z=-62.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=694.5,y=24,z=-62.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/sealed_room/search/painting_1