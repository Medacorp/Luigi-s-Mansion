tag @s[x=661.5,y=11,z=-10.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=11,z=-10.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=661.5,y=11,z=-10.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #conservatory_chair_2 SearcherID = #temp ID
execute if entity @s[x=661.5,y=11,z=-10.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/conservatory/search/boo_check/chair_2