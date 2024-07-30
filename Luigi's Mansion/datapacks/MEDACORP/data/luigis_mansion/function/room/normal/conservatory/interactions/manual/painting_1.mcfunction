tag @s[x=653.5,y=14,z=-8.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=653.5,y=14,z=-8.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=653.5,y=14,z=-8.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #conservatory_painting_1 SearcherID = #temp ID
execute if entity @s[x=653.5,y=14,z=-8.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/boo_check/painting_1