tag @s[x=641.5,y=20,z=-36.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=641.5,y=20,z=-36.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=641.5,y=20,z=-36.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #tea_room_chair_1 SearcherID = #temp ID
execute if entity @s[x=641.5,y=20,z=-36.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/tea_room/search/boo_check/chair_1