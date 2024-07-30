tag @s[x=696.5,y=114,z=38.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=696.5,y=114,z=38.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=696.5,y=114,z=38.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #master_bedroom_painting_5 SearcherID = #temp ID
execute if entity @s[x=696.5,y=114,z=38.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/master_bedroom/search/boo_check/painting_5