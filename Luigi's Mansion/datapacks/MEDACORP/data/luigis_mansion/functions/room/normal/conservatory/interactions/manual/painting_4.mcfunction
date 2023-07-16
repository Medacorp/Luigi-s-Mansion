tag @s[x=658.5,y=13,z=-27.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=658.5,y=13,z=-27.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=658.5,y=13,z=-27.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/boo_check/painting_4