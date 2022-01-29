tag @s[x=696.5,y=120,z=18.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=696.5,y=120,z=18.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=696.5,y=120,z=18.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/clockwork_room/search/chair_2