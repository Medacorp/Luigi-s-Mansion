tag @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=661.5,y=12,z=44.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/lavatory/search/toilet_paper