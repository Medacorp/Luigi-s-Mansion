tag @s[x=708.5,y=21,z=-32.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=708.5,y=21,z=-32.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=708.5,y=21,z=-32.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #study_book_2 SearcherID = #temp ID
execute if entity @s[x=708.5,y=21,z=-32.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/book_2