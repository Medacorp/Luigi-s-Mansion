tag @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/plant
execute if entity @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #cold_storage_campfire_1 SearcherID = #temp ID
execute if entity @s[x=728.5,y=2,z=6.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cold_storage/search/boo_check/campfire_1