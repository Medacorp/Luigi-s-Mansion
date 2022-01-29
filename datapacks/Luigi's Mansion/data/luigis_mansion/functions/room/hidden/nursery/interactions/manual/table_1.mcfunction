tag @s[x=747.5,y=20,z=-43.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=747.5,y=20,z=-43.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=747.5,y=20,z=-43.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/nursery/search/table_1