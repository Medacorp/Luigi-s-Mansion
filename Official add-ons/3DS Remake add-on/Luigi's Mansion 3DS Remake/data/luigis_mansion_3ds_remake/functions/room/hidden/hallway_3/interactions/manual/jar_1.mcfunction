tag @s[x=714.5,y=12,z=19.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=714.5,y=12,z=19.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=714.5,y=12,z=19.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/hallway_3/search/jar_1