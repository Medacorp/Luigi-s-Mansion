tag @s[x=655.5,y=11,z=-7.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=655.5,y=11,z=-7.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=655.5,y=11,z=-7.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/chair_1