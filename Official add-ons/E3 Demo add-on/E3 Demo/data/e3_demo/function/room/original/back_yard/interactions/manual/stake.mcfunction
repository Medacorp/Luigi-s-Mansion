tag @s[x=674.5,y=102,z=49.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=674.5,y=102,z=49.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=674.5,y=102,z=49.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #back_yard_stake SearcherID = #temp ID
execute if entity @s[x=674.5,y=102,z=49.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/back_yard/search/stake