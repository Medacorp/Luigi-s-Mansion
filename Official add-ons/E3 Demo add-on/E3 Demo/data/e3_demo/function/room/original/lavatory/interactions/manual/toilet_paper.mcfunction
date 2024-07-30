tag @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #lavatory_toilet_paper SearcherID = #temp ID
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/lavatory/search/toilet_paper