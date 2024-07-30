tag @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #billiards_room_painting_1 SearcherID = #temp ID
execute if entity @s[x=677.5,y=13,z=89.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/billiards_room/search/boo_check/painting_1