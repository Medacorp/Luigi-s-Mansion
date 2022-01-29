tag @s[x=694.5,y=120,z=16.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=694.5,y=120,z=16.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=694.5,y=120,z=16.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/clockwork_room/search/chair_4