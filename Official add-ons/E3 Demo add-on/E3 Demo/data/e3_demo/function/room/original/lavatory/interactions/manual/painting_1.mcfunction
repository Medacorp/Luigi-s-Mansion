tag @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #lavatory_painting_1 SearcherID = #temp ID
execute if entity @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/lavatory/search/painting_1