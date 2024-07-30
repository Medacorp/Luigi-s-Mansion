tag @s[x=743.5,y=21,z=-39.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=743.5,y=21,z=-39.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=743.5,y=21,z=-39.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #nursery_toy_1 SearcherID = #temp ID
execute if entity @s[x=743.5,y=21,z=-39.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/nursery/search/boo_check/toy_1