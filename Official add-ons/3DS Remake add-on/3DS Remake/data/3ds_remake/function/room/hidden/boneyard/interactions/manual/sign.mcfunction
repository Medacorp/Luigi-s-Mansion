tag @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #boneyard_sign SearcherID = #temp ID
execute if entity @s[x=673.5,y=102,z=47.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/boneyard/search/sign