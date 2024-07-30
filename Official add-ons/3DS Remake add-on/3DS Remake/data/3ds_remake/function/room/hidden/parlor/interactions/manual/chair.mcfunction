tag @s[x=719.5,y=20,z=32.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=719.5,y=20,z=32.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=719.5,y=20,z=32.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #parlor_chair SearcherID = #temp ID
execute if entity @s[x=719.5,y=20,z=32.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/parlor/search/boo_check/chair