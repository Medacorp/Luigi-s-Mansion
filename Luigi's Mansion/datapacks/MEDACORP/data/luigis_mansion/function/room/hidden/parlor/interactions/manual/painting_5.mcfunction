tag @s[x=728.5,y=22,z=-6.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=728.5,y=22,z=-6.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=728.5,y=22,z=-6.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #parlor_painting_5 SearcherID = #temp ID
execute if entity @s[x=728.5,y=22,z=-6.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/parlor/search/boo_check/painting_5