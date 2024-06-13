tag @s[x=728.5,y=2,z=9.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=728.5,y=2,z=9.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/plant
execute if entity @s[x=728.5,y=2,z=9.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/cold_storage/search/boo_check/campfire_1