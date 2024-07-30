tag @s[x=668.5,y=14,z=8.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=668.5,y=14,z=8.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=668.5,y=14,z=8.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #hallway_6_painting SearcherID = #temp ID
execute if entity @s[x=668.5,y=14,z=8.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/hallway_6/search/painting