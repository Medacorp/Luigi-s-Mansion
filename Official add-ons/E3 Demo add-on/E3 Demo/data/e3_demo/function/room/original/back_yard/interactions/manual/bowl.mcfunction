tag @s[x=676.5,y=101,z=51.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=676.5,y=101,z=51.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=676.5,y=101,z=51.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #back_yard_bowl SearcherID = #temp ID
execute if entity @s[x=676.5,y=101,z=51.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/back_yard/search/bowl