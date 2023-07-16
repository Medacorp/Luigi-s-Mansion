tag @s[x=747.5,y=20,z=59.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=747.5,y=20,z=59.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=747.5,y=20,z=59.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/nursery/search/boo_check/table_1