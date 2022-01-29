tag @s[x=749.5,y=11,z=71.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=749.5,y=11,z=71.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=749.5,y=11,z=71.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/butlers_room/search/bucket