tag @s[x=668.5,y=23,z=34.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=668.5,y=23,z=34.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=668.5,y=23,z=34.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #hallway_10_painting SearcherID = #temp ID
execute if entity @s[x=668.5,y=23,z=34.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/hallway_10/search/painting