tag @s[x=706.5,y=11,z=49.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=706.5,y=11,z=49.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=706.5,y=11,z=49.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #dining_room_chair_1 SearcherID = #temp ID
execute if entity @s[x=706.5,y=11,z=49.5,distance=..0.7,tag=!sound,tag=!check] run function e3_demo:room/original/dining_room/search/chair_1