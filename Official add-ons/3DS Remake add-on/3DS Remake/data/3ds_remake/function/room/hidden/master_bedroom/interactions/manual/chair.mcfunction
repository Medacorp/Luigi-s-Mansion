tag @s[x=690.5,y=111,z=41.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=690.5,y=111,z=41.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=690.5,y=111,z=41.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #master_bedroom_chair SearcherID = #temp ID
execute if entity @s[x=690.5,y=111,z=41.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/master_bedroom/search/boo_check/chair